import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/profile/i_profile_remote_datasource.dart';

@LazySingleton(as: IProfileRemoteDataSource)
class ProfileRemoteDataSource implements IProfileRemoteDataSource {
  final Dio httpClient;
  ProfileRemoteDataSource(this.httpClient);

  @override
  Future<Response?> updateProfile(FormData data,String mask) async {
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    try {
      final response = await httpClient.post('members/auth/update/$mask',
          data: data);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        return e.response!;
      }
      debugPrint(e.response?.statusCode.toString());
      throw ServerException();
    }
  }

  @override
  Future<Response?> updatePassword(FormData data) async{
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    try {
      final response = await httpClient.post('members/update-password',
          data: data);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        return e.response!;
      }
      debugPrint(e.response?.statusCode.toString());
      throw ServerException();
    }
  }
}
