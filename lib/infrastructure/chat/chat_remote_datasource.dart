import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/chats/i_chat_remote_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';

@LazySingleton(as: IChatRemoteDataSource)
class ChatRemoteDataSource implements IChatRemoteDataSource {
  final Dio httpClient;
  final IAuthLocalDatasource db;
  ChatRemoteDataSource(this.httpClient, this.db);
  @override
  Future<Response?> getChatCategories() async {
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
      final response = await httpClient.get('members/counselling-groups');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> sendMessage(String message, int receipientId) async {
    final user = await db.getUser();
    final token = user.fold(() => null, (a) => a.token);
    print('$message $receipientId');
    // sub
    final subdomainBox = Hive.box<String>('subdomain');
    final uri = Uri.parse(httpClient.options.baseUrl);
    final osub = uri.host.split('.')[0];
    final newUrl = uri.toString().replaceFirst(osub, subdomainBox.values.first);
    httpClient.options.baseUrl=newUrl;
    print(newUrl);
    httpClient.options.headers = {'Authorization': 'Bearer $token'};
    try {
      final response = await httpClient.post('members/send-message',data: {'message':message,'recipient':receipientId});
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> getChats(int conversationId) async{
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
      final response = await httpClient.get('members/counsellor-chat/$conversationId');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<Response?> getCounsellorChats() async{
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
      final response = await httpClient.get('members/get-chat-list');
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
