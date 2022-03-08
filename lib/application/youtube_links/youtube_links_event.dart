part of 'youtube_links_bloc.dart';

@freezed
class YoutubeLinksEvent with _$YoutubeLinksEvent {
  const factory YoutubeLinksEvent.youtubeLinksFetched() = YoutubeLinksFetched;
}