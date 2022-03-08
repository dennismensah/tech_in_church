import 'package:dio/dio.dart';

abstract class IHomeRemoteDataSource {
  Future<Response?> getHomeRecords();
}
