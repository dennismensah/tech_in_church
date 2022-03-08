import 'package:freezed_annotation/freezed_annotation.dart';

part 'church_today_failure.freezed.dart';

@freezed
 class ChurchTodayFailure with _$ChurchTodayFailure {
   const factory ChurchTodayFailure.initial() = Initial;
  const factory ChurchTodayFailure.serverError() = ServerError;
  const factory ChurchTodayFailure.noNetwork() = NoNetwork;
}