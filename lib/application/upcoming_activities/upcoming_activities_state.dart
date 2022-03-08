part of 'upcoming_activities_bloc.dart';

@freezed
class UpcomingActivitiesState with _$UpcomingActivitiesState {
  const factory UpcomingActivitiesState.initial() = Initial;
  const factory UpcomingActivitiesState.loading() = Loading;
  const factory UpcomingActivitiesState.loadedSuccessfully(
      List<UpcomingActivity> upcomingActivities) = LoadedSuccessfully;
  const factory UpcomingActivitiesState.loadedUnSuccessfully(UpcomingActivityFailure failure) =
      LoadedUnsuccessfully;
}
