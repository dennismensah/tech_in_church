part of 'church_today_bloc.dart';

@freezed
class ChurchTodayState with _$ChurchTodayState {
  const factory ChurchTodayState.initial() = Initial;
  const factory ChurchTodayState.loading() = Loading;
  const factory ChurchTodayState.loadedSuccessfully(List<ChurchToday> churchTodayRecords) = LoadedSuccessfully;
  const factory ChurchTodayState.loadedUnSuccessfully(ChurchTodayFailure failure) = LoadedUnsuccessfully;
}
