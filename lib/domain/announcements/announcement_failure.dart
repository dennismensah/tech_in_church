import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_failure.freezed.dart';

@freezed
 class AnnouncementFailure with _$AnnouncementFailure {
   const factory AnnouncementFailure.initial() = Initial;
  const factory AnnouncementFailure.serverError() = ServerError;
  const factory AnnouncementFailure.noNetwork() = NoNetwork;
}