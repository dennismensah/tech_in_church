import 'package:freezed_annotation/freezed_annotation.dart';

part 'facebook_live.freezed.dart';
part 'facebook_live.g.dart';

@freezed
class FacebookLive with _$FacebookLive {
  const factory FacebookLive({
    required int id,
    required String title,
    required String link,
    required String creator,
    required String mask,
    required String created_at,
    required String startname,
  }) = _FacebookLive;

  factory FacebookLive.fromJson(Map<String, dynamic> json) =>
      _$FacebookLiveFromJson(json);
}