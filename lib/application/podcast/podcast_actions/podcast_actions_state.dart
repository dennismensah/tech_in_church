part of 'podcast_actions_bloc.dart';

@freezed
class PodcastActionsState with _$PodcastActionsState {
  const factory PodcastActionsState.initial() = _Initial;
  const factory PodcastActionsState.loading() = Loading;
  const factory PodcastActionsState.podcastBookmarkedSuccessfully() =
      PodcastBookmarkedSuccessfully;
  const factory PodcastActionsState.podcastBookmarkedUnsuccessfully(PodcastFailure podcastFailure) =
      PodcastBookmarkedUnsuccessfully;
  const factory PodcastActionsState.downloadedSuccessfully() =
      DownloadedSuccessfully;
  const factory PodcastActionsState.downloadFailed(
      PodcastFailure podcastFailure) = DownloadFailed;
}
