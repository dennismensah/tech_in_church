part of 'youtube_links_bloc.dart';

@freezed
class YoutubeLinksState with _$YoutubeLinksState {
  const factory YoutubeLinksState.initial() = Initial;
  const factory YoutubeLinksState.loading() = Loading;
  const factory YoutubeLinksState.loadedSuccessfully(List<YoutubeLink> youtubeLinks) = LoadedSuccessfully;
  const factory YoutubeLinksState.loadedUnSuccessfully(YoutubeLinkFailure failure) = LoadedUnsuccessfully;
}
