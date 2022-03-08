part of 'facebook_live_bloc.dart';

@freezed
class FacebookLiveState with _$FacebookLiveState {
  const factory FacebookLiveState.initial() = Initial;
  const factory FacebookLiveState.loading() = Loading;
  const factory FacebookLiveState.loadedSuccessfully(List<FacebookLive> facebookLiveVideos) = LoadedSuccessfully;
  const factory FacebookLiveState.loadedUnSuccessfully(FacebookLiveFailure failure) = LoadedUnsuccessfully;
}
