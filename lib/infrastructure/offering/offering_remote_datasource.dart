import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';
import 'package:tech_in_church/domain/offering/i_offering_remote_datasource.dart';

@LazySingleton(as: IOfferingRemoteDataSource)
class OfferingRemoteDataSource implements IOfferingRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  OfferingRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> makeOffering(String amount) async {
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
      final response = await httpClient.post('members/payment-intent',data: {'amount':int.parse(amount)*100});
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> updateServer(String amount,String paidAt) async {
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
      final response = await httpClient.post('members/pay-offering',data: {'amount':int.parse(amount)*100,'paid_at':paidAt});
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}

