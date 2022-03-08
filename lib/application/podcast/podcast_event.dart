part of 'podcast_bloc.dart';

@freezed
class PodcastEvent with _$PodcastEvent {
  const factory PodcastEvent.podcastFetched() = PodcastFetched;
}
