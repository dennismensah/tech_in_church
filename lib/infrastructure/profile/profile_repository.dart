import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/auth/i_auth_remote_datasource.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:tech_in_church/domain/profile/i_profile_remote_datasource.dart';
import 'package:tech_in_church/domain/profile/i_profile_repository.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final IProfileRemoteDataSource profileRemoteDataSource;
  final INetworkInfo networkInfo;
  final IAuthLocalDatasource db;
  ProfileRepository(
      {required this.profileRemoteDataSource,
      required this.networkInfo,
      required this.db});

  @override
  Future<Either<AuthFailure, User>> updateProfile(
      FormData data, String mask) async {
    late Either<AuthFailure, User> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final response =
            await profileRemoteDataSource.updateProfile(data, mask);
        switch (response?.statusCode) {
          case 200:
            final userOption = await db.getUser();
            final userToken = userOption.getOrElse(() => null);

            final ust = UserToken(
                user: User.fromJson(response?.data['data']),
                token: userToken.token,
                counsellor: userToken.counsellor);
            await db.saveUser(ust);
            // await db.saveUser(UserToken.fromJson(
            //     response?.data?['data'] as Map<String, dynamic>));
            result = right(
                User.fromJson(response?.data?['data'] as Map<String, dynamic>));
            break;
          case 208:
          case 422:
          case 403:
            result = left(const AuthFailure.serverError());
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
  Future<Either<AuthFailure, Unit>> updatePassword(FormData data) async {
    late Either<AuthFailure, Unit> result =
        left(const AuthFailure.invalidFields());

    try {
      if (await networkInfo.isConnected) {
        final response = await profileRemoteDataSource.updatePassword(data);
        switch (response?.statusCode) {
          case 200:
            result = right(unit);
            break;
          case 208:
          case 422:
          case 403:
            result = left(const AuthFailure.serverError());
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
}
