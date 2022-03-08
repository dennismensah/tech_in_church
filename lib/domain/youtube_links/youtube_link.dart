import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_link.freezed.dart';
part 'youtube_link.g.dart';

@freezed
class YoutubeLink with _$YoutubeLink {
  const factory YoutubeLink({
    required int id,
    required String title,
    required String link,
    required String startname,
    required String mask,
    required String created_at,
    required String creator,
  }) = _YoutubeLink;

  factory YoutubeLink.fromJson(Map<String, dynamic> json) =>
      _$YoutubeLinkFromJson(json);
}