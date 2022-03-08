import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_failure.freezed.dart';

@freezed
 class PodcastFailure with _$PodcastFailure {
   const factory PodcastFailure.initial() = Initial;
  const factory PodcastFailure.serverError() = ServerError;
  const factory PodcastFailure.noNetwork() = NoNetwork;
}