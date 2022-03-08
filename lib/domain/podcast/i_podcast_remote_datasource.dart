import 'package:dio/dio.dart';

abstract class IPodcastRemoteDataSource {
  Future<Response?> getPodcasts();
  Future<Response?> downloadAudio(String audioUrl,String audioFileName);
  Future<Response?> bookmarkPodcast(int podcastId);
}
