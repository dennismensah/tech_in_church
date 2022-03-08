import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> validateSubdomain(String subdomain);
  Future<Either<AuthFailure, UserToken>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, UserToken>> register(FormData data);
  Future<Either<AuthFailure, Unit>> forgotPassword(Map data);
  Future<Option<UserToken>> getSignedInUser();
  Future<Either<AuthFailure, UserToken>> signInWithGoogle();
  Future<Either<AuthFailure, UserToken>> signInWithFacebook();
  Future<Either<AuthFailure, UserToken>> signInWithApple();
  void signout();
}
