import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/facebook_user.dart';
import 'package:tech_in_church/domain/auth/i_auth_remote_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';

@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Dio httpClient;
  AuthRemoteDataSource(this.httpClient);

  @override
  Future<Response?> validateSubdomain(String subDomain) async {
    httpClient.options.baseUrl = 'https://techinchurch.com/api/v1/';
    try {
      final response = await httpClient.get('validate-subdomain/$subDomain');
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        return e.response!;
      }
      debugPrint(e.message);
      throw ServerException();
    }
  }

  @override
  Future<Response?> login(
      String emailAddress, String password, String fcmToken) async {
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl = newUrl;
    print(newUrl);
    try {
      final response = await httpClient.post('members/auth/login', data: {
        'email': emailAddress,
        'password': password,
        'token': fcmToken
      });
      return response;
    } on DioError catch (e) {
      debugPrint(e.response?.statusCode.toString());
      if (e.response?.statusCode == 422) {
        return e.response!;
      }

      throw ServerException();
    }
  }

  @override
  Future<Response?> register(FormData data) async {
    debugPrint(data.fields.toString());
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl = newUrl;
    print(newUrl);
    try {
      final response =
          await httpClient.post('members/auth/register', data: data);
      return response;
    } on DioError catch (e) {
      print(e);
      debugPrint(e.response?.statusMessage);
      debugPrint(e.response?.statusCode.toString());
      if (e.response?.statusCode == 400) {
        return e.response!;
      }
      throw ServerException();
    }
  }

  @override
  Future<Response?> forgotPassword(Map data) async {
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl = newUrl;
    print(newUrl);
    try {
      final response =
          await httpClient.post('members/auth/forgot-password', data: data);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        return e.response!;
      }
      debugPrint(e.message);
      throw ServerException();
    }
  }

  @override
  Future<Response?> facebookLogin(String accessToken) async {
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl = newUrl;
    print(newUrl);
    try {
      final response = await httpClient.get(
          'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$accessToken');
      return response;
    } on DioError catch (e) {
      debugPrint(e.message);
      throw ServerException();
    }
  }

  @override
  Future<Response?> completeFacebookLogin(FacebookUser fbUser) async {
    print(fbUser.toJson());
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl = newUrl;
    print(newUrl);
    try {
      final response = await httpClient.post('members/auth/sociallogin',
          data: fbUser.toJson());
      return response;
    } on DioError catch (e) {
      print(e);
      debugPrint(e.response?.statusMessage);
      debugPrint(e.response?.statusCode.toString());
      if (e.response?.statusCode == 400) {
        return e.response!;
      }
      throw ServerException();
    }
  }
}
