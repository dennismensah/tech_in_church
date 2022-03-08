import 'package:dio/dio.dart';

abstract class IFacebookLiveRemoteDataSource {
  Future<Response?> getFacebookLiveVideos();
}
