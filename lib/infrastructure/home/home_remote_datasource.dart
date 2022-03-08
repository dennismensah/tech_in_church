import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/home/home_remote_datasource.dart';

@LazySingleton(as: IHomeRemoteDataSource)
class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  HomeRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getHomeRecords() async {
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    print('token $token');
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      final response = await httpClient.get('members/home-items');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}

