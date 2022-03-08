import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_link_failure.freezed.dart';

@freezed
 class YoutubeLinkFailure with _$YoutubeLinkFailure {
   const factory YoutubeLinkFailure.initial() = Initial;
  const factory YoutubeLinkFailure.serverError() = ServerError;
  const factory YoutubeLinkFailure.noNetwork() = NoNetwork;
}