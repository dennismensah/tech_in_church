import 'package:dio/dio.dart';

abstract class IChatRemoteDataSource {
  Future<Response?> getChatCategories();
  Future<Response?> sendMessage(String message,int receipientId);
  Future<Response?> getChats(int conversationId);
  Future<Response?> getCounsellorChats();
}
