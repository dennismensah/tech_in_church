import 'package:dio/dio.dart';

abstract class IPollRemoteDataSource {
  Future<Response?> getPolls();
  Future<Response?> vote(String mask,int pollId,int answerId);
}
