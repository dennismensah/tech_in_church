part of 'poll_actions_bloc.dart';

@freezed
class PollActionsState with _$PollActionsState {
  const factory PollActionsState.initial() = Initial;
  const factory PollActionsState.loading() = Loading;
  const factory PollActionsState.loadedSuccessfully() = LoadedSuccessfully;
  const factory PollActionsState.loadedUnSuccessfully(String message) = LoadedUnsuccessfully;
}
