import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/non_pay_event/i_non_pay_event_remote_datasource.dart';

@LazySingleton(as: INonPayEventRemoteDataSource)
class NonPayEventRemoteDataSource implements INonPayEventRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;

  NonPayEventRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getNonPayEvents() async {
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
      final response = await httpClient.get('members/nonpay-events');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> registerForNonPayEvent(int eventid) async {
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    final mask = user.fold(() => null, (a) => a.user.mask);
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      print({'member_mask': mask, 'event_id': eventid});
      final response = await httpClient.post(
          'members/register-non-payable-event',
          data: {'member_mask': mask, 'event_id': eventid});
      print(response.statusCode);
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
