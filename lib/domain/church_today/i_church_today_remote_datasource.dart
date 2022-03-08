import 'package:dio/dio.dart';

abstract class IChurchTodayRemoteDataSource {
  Future<Response?> getChurchTodayRecords();
}
