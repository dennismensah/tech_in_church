import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/podcast/i_podcast_remote_datasource.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: IPodcastRemoteDataSource)
class PodcastRemoteDataSource implements IPodcastRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;

  PodcastRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getPodcasts() async {
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      final response = await httpClient.get('members/podcasts');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> downloadAudio(String audioUrl, String audioFileName) async {
    try {
      var tempDir = await getTemporaryDirectory();
      String fullPath = "${tempDir.path}${"/$audioFileName"}";
      debugPrint(fullPath);
      debugPrint(audioUrl);
      final response = await httpClient.download(
        audioUrl,
        fullPath,
      );
      return response;
    } on DioError catch (e) {
      print(e.response?.statusMessage);
      throw ServerException();
    }
  }

  @override
  Future<Response?> bookmarkPodcast(int podcastId) async{
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      final response = await httpClient.post('members/bookmark-podcast',data: {'podcast_id': podcastId});
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
