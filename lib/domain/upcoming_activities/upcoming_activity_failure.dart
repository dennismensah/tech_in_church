import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_activity_failure.freezed.dart';

@freezed
 class UpcomingActivityFailure with _$UpcomingActivityFailure {
   const factory UpcomingActivityFailure.initial() = Initial;
  const factory UpcomingActivityFailure.serverError() = ServerError;
  const factory UpcomingActivityFailure.noNetwork() = NoNetwork;
}