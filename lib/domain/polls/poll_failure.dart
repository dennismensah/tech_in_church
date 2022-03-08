import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_failure.freezed.dart';

@freezed
 class PollFailure with _$PollFailure {
   const factory PollFailure.initial() = Initial;
  const factory PollFailure.serverError(String message) = ServerError;
  const factory PollFailure.noNetwork() = NoNetwork;
}