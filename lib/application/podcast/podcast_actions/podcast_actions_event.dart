part of 'podcast_actions_bloc.dart';

@freezed
class PodcastActionsEvent with _$PodcastActionsEvent {
  const factory PodcastActionsEvent.podcastBookmarked(int podcastId) =
      PodcastBookmarked;
  const factory PodcastActionsEvent.podcastDownloaded(String audioUrl, String audioFileName) =
      PodcastDownloaded;
}