part of 'polls_bloc.dart';

@freezed
class PollsState with _$PollsState {
  const factory PollsState.initial() = Initial;
  const factory PollsState.loading() = Loading;
  const factory PollsState.loadedSuccessfully(List<Poll> polls) = LoadedSuccessfully;
  const factory PollsState.loadedUnSuccessfully(PollFailure failure) = LoadedUnsuccessfully;
}
