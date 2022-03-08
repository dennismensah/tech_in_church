import 'package:dio/dio.dart';
import 'package:tech_in_church/domain/auth/facebook_user.dart';

abstract class IAuthRemoteDataSource {
  Future<Response?> validateSubdomain(String subDomain);
  Future<Response?> login(String emailAddress, String password,String fcmToken);
  Future<Response?> facebookLogin(String accessToken);
  Future<Response?> completeFacebookLogin(FacebookUser fbUser);
  Future<Response?> register(FormData data);
  Future<Response?> forgotPassword(Map data);
}
