import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast.freezed.dart';
part 'podcast.g.dart';

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    required int id,
    required String title,
    required String audio,
    required String audio_filename,
    required String mask,
    required String created_at,
    required int bookmark,
  }) = _Podcast;

  factory Podcast.fromJson(Map<String, dynamic> json) =>
      _$PodcastFromJson(json);
}