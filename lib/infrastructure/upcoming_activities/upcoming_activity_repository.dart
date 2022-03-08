import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/upcoming_activities/i_upcoming_activities_remote_datasource.dart';
import 'package:tech_in_church/domain/upcoming_activities/i_upcoming_activities_repository.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity_failure.dart';

@LazySingleton(as: IUpcomingActivitiesRepository)
class UpcomingActivityRepository extends IUpcomingActivitiesRepository {
  final IUpcomingActivitiesRemoteDataSource upcomingActivitiesRemoteDataSource;
  final INetworkInfo networkInfo;
  UpcomingActivityRepository(
      {required this.upcomingActivitiesRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<UpcomingActivityFailure, List<UpcomingActivity>>> getUpcomingActivities() async {
    late Either<UpcomingActivityFailure, List<UpcomingActivity>> result =
        left(const UpcomingActivityFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await upcomingActivitiesRemoteDataSource.getUpcomingActivities();
        switch (response?.statusCode) {
          case 200:
            final upcomingActivityResponse = (response?.data?['data'] as List)
                .map((e) => UpcomingActivity.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(upcomingActivityResponse);
            break;
        }
      } else {
        result = left(const UpcomingActivityFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const UpcomingActivityFailure.serverError());
    }
    return result;
  }
}
