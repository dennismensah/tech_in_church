part of 'polls_bloc.dart';

@freezed
class PollsEvent with _$PollsEvent {
  const factory PollsEvent.pollsFetched() =
      PollsFetched;
}