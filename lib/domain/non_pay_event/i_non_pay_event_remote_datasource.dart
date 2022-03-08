import 'package:dio/dio.dart';

abstract class INonPayEventRemoteDataSource {
  Future<Response?> getNonPayEvents();
  Future<Response?> registerForNonPayEvent(int eventid);
}
