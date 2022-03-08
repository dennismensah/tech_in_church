part of 'church_today_bloc.dart';

@freezed
class ChurchTodayEvent with _$ChurchTodayEvent {
  const factory ChurchTodayEvent.churchTodayRecordsFetched() =
      ChurchTodayRecordsFetched;
}