import 'package:dio/dio.dart';

abstract class IUpcomingActivitiesRemoteDataSource {
  Future<Response?> getUpcomingActivities();
}
