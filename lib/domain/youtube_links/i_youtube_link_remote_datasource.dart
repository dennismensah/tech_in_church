import 'package:dio/dio.dart';

abstract class IYoutubeLinkRemoteDataSource {
  Future<Response?> getYoutubeLinks();
}
