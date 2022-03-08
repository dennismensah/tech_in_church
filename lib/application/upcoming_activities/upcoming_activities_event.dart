part of 'upcoming_activities_bloc.dart';

@freezed
class UpcomingActivitiesEvent with _$UpcomingActivitiesEvent {
  const factory UpcomingActivitiesEvent.upcomingActivitiesFetched() = UpcomingActivitiesFetched;
}