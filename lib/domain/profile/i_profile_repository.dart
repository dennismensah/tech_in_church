import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';

abstract class IProfileRepository {
  Future<Either<AuthFailure, User>> updateProfile(FormData data,String mask);
  Future<Either<AuthFailure, Unit>> updatePassword(FormData data);
}