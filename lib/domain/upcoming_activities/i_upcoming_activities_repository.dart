import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity_failure.dart';

abstract class IUpcomingActivitiesRepository {
  Future<Either<UpcomingActivityFailure, List<UpcomingActivity>>> getUpcomingActivities();
}