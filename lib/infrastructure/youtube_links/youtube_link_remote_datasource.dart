import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/youtube_links/i_youtube_link_remote_datasource.dart';

@LazySingleton(as: IYoutubeLinkRemoteDataSource)
class YoutubeLinkRemoteDataSource implements IYoutubeLinkRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  YoutubeLinkRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getYoutubeLinks() async {
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    print('token $token');
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      final response = await httpClient.get('members/youtube-links');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
