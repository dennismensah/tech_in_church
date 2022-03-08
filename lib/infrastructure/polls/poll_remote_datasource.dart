import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/polls/i_poll_remote_datasource.dart';

@LazySingleton(as: IPollRemoteDataSource)
class PollRemoteDataSource implements IPollRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  PollRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getPolls() async {
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
      final response = await httpClient.get('members/polls');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> vote(String mask, int pollId, int answerId) async{
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
      final response = await httpClient.post('members/cast-vote',data: {'member_mask':mask,'poll_id':pollId,'answer_id':answerId});
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        return e.response!;
      }
      print(e);
      throw ServerException();
    }
  }
}
