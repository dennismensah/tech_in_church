import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/facebook_user.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/auth/i_auth_remote_datasource.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource authRemoteDataSource;
  final INetworkInfo networkInfo;
  final IAuthLocalDatasource db;
  final FacebookLogin facebookLogin;
  final GoogleSignIn googleLogin;
  final FirebaseMessaging firebaseMessaging;
  AuthRepository({
    required this.authRemoteDataSource,
    required this.networkInfo,
    required this.db,
    required this.facebookLogin,
    required this.googleLogin,
    required this.firebaseMessaging,
  });

  @override
  Future<Either<AuthFailure, Unit>> validateSubdomain(String subdomain) async {
    late Either<AuthFailure, Unit> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final response =
            await authRemoteDataSource.validateSubdomain(subdomain);
        switch(response?.statusCode){
          case 200:
            result = right(unit);
            break;
          case 422:
            result = left(const AuthFailure.serverError());
            break;
        }
      } else {
        result = left(const AuthFailure.noNetwork());
      }
    } catch (e) {
      result = left(const AuthFailure.serverError());
    }
    return result;
  }

  @override
  Future<Option<UserToken>> getSignedInUser() async {
    return Future.value(await db.getUser());
  }

  @override
  Future<Either<AuthFailure, UserToken>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    late Either<AuthFailure, UserToken> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final fcmToken = await firebaseMessaging.getToken();
        final response = await authRemoteDataSource.login(
            emailAddress.getOrCrash(), password.getOrCrash(), fcmToken ?? '');
        switch (response?.statusCode) {
          case 200:
            result = right(UserToken.fromJson(
                response?.data?['data'] as Map<String, dynamic>));
            await db.saveUser(UserToken.fromJson(
                response?.data?['data'] as Map<String, dynamic>));
            await db.saveTimezone();
            break;
          case 208:
          case 422:
          case 403:
            result =
                left(const AuthFailure.invalidEmailAndPasswordCombination());
            break;
        }
      } else {
        result = left(const AuthFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const AuthFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<AuthFailure, UserToken>> register(FormData data) async {
    late Either<AuthFailure, UserToken> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final fcmToken = await firebaseMessaging.getToken();
        data.fields.add(MapEntry('token', fcmToken ?? ''));
        final response = await authRemoteDataSource.register(data);
        switch (response?.statusCode) {
          case 200:
            result = right(UserToken.fromJson(
                response?.data?['data'] as Map<String, dynamic>));
            await db.saveUser(UserToken.fromJson(
                response?.data?['data'] as Map<String, dynamic>));
            break;
          case 400:
            result = left(const AuthFailure.userAlreadyExists());
            break;
          case 403:
            result =
                left(const AuthFailure.invalidEmailAndPasswordCombination());
            break;
        }
      } else {
        result = left(const AuthFailure.noNetwork());
      }
    } catch (e) {
      result = left(const AuthFailure.serverError());
    }
    return result;
  }

  @override
  void signout() async {
    await googleLogin.signOut();
    await facebookLogin.logOut();
    await Hive.box<UserToken>('usertoken').clear();
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword(Map data) async {
    late Either<AuthFailure, Unit> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final response = await authRemoteDataSource.forgotPassword(data);
        switch (response?.statusCode) {
          case 200:
            result = right(unit);
            break;
          case 422:
            result = left(const AuthFailure.emailNotAssociatedWithAnyAccount());
            break;
        }
      } else {
        result = left(const AuthFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const AuthFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<AuthFailure, UserToken>> signInWithFacebook() async {
    try {
      facebookLogin.loginBehavior = FacebookLoginBehavior.webOnly;
      final FacebookLoginResult fbResult = await facebookLogin.logIn(['email']);
      switch (fbResult.status) {
        case FacebookLoginStatus.loggedIn:
          final FacebookAccessToken accessToken = fbResult.accessToken!;
          final res =
              await authRemoteDataSource.facebookLogin(accessToken.token);
          if (res?.statusCode == 200) {
            final cres = await authRemoteDataSource
                .completeFacebookLogin(FacebookUser.fromJson(res?.data));
            switch (cres?.statusCode) {
              case 200:
                await db.saveUser(UserToken.fromJson(
                    cres?.data?['data'] as Map<String, dynamic>));
                return right(UserToken.fromJson(
                    cres?.data?['data'] as Map<String, dynamic>));
              case 208:
              case 422:
              case 403:
                return left(
                    const AuthFailure.invalidEmailAndPasswordCombination());
            }
            return left(const AuthFailure.socialLoginFailed());
          } else {
            return left(const AuthFailure.socialLoginFailed());
          }
        case FacebookLoginStatus.cancelledByUser:
          return left(const AuthFailure.cancelledByUser());
        case FacebookLoginStatus.error:
          return left(const AuthFailure.socialLoginFailed());
      }
    } on PlatformException catch (e) {
      debugPrint(e.code);
      return left(AuthFailure.socialLoginFailed());
    } catch (e) {
      print(e);
      return left(AuthFailure.socialLoginFailed());
    }
    return left(AuthFailure.socialLoginFailed());
  }

  @override
  Future<Either<AuthFailure, UserToken>> signInWithGoogle() async {
    try {
      final gResult = await googleLogin.signIn();

      if (gResult != null) {
        final cres = await authRemoteDataSource.completeFacebookLogin(
            FacebookUser(
                id: 1,
                name: gResult.displayName ?? '',
                first_name: gResult.displayName?.split(' ')[0] ?? '',
                last_name: gResult.displayName?.split(' ')[1] ?? '',
                email: gResult.email));
        switch (cres?.statusCode) {
          case 200:
            await db.saveUser(UserToken.fromJson(
                cres?.data?['data'] as Map<String, dynamic>));
            return right(UserToken.fromJson(
                cres?.data?['data'] as Map<String, dynamic>));
          case 208:
          case 422:
          case 403:
            return left(const AuthFailure.invalidEmailAndPasswordCombination());
        }
      }
    } on PlatformException catch (e) {
      debugPrint(e.code);
      return left(AuthFailure.socialLoginFailed());
    } catch (e) {
      print(e);
      return left(AuthFailure.socialLoginFailed());
    }

    return left(AuthFailure.socialLoginFailed());
  }

  @override
  Future<Either<AuthFailure, UserToken>> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      print(credential);
      // final gResult = await googleLogin.signIn();

      // if (gResult != null) {
      //   final cres = await authRemoteDataSource.completeFacebookLogin(
      //       FacebookUser(
      //           id: 1,
      //           name: gResult.displayName ?? '',
      //           first_name: gResult.displayName?.split(' ')[0] ?? '',
      //           last_name: gResult.displayName?.split(' ')[1] ?? '',
      //           email: gResult.email));
      //   switch (cres?.statusCode) {
      //     case 200:
      //       await db.saveUser(UserToken.fromJson(
      //           cres?.data?['data'] as Map<String, dynamic>));
      //       return right(UserToken.fromJson(
      //           cres?.data?['data'] as Map<String, dynamic>));
      //     case 208:
      //     case 422:
      //     case 403:
      //       return left(const AuthFailure.invalidEmailAndPasswordCombination());
      //   }
      // }
    } on PlatformException catch (e) {
      debugPrint(e.code);
      return left(AuthFailure.socialLoginFailed());
    } catch (e) {
      print(e);
      return left(AuthFailure.socialLoginFailed());
    }

    return left(AuthFailure.socialLoginFailed());
  }
}
