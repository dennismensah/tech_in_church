part of 'poll_actions_bloc.dart';

@freezed
class PollActionsEvent with _$PollActionsEvent {
  const factory PollActionsEvent.voted(mask, pollId, answerId) =
  Voted;
}