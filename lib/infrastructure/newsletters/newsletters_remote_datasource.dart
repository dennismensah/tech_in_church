import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/newsletters/i_newsletter_remote_datasource.dart';

@LazySingleton(as: INewsletterRemoteDataSource)
class NewsletterRemoteDataSource implements INewsletterRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  NewsletterRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getNewsletters() async {
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
      final response = await httpClient.get('members/newsletters');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}

