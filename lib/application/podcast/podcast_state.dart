part of 'podcast_bloc.dart';

@freezed
class PodcastState with _$PodcastState {
  const factory PodcastState.initial() = Initial;
  const factory PodcastState.loading() = Loading;
  const factory PodcastState.loadedSuccessfully(List<Podcast> podcasts,List<Podcast> bookmarkedPodcasts) = LoadedSuccessfully;
  const factory PodcastState.loadedUnSuccessfully(PodcastFailure failure) = LoadedUnsuccessfully;
}
