import 'package:dio/dio.dart';

abstract class IAnnouncementRemoteDataSource {
  Future<Response?> getAnnouncements();
}
