import 'package:dio/dio.dart';

abstract class IProfileRemoteDataSource {
  Future<Response?> updateProfile(FormData data,String mask);
  Future<Response?> updatePassword(FormData data);
}