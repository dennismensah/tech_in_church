import 'package:freezed_annotation/freezed_annotation.dart';

part 'facebook_live_failure.freezed.dart';

@freezed
class FacebookLiveFailure with _$FacebookLiveFailure {
  const factory FacebookLiveFailure.initial() = Initial;
  const factory FacebookLiveFailure.serverError() = ServerError;
  const factory FacebookLiveFailure.noNetwork() = NoNetwork;
}
