import 'package:freezed_annotation/freezed_annotation.dart';

part 'non_pay_event_failure.freezed.dart';

@freezed
 class NonPayEventFailure with _$NonPayEventFailure {
   const factory NonPayEventFailure.initial() = Initial;
  const factory NonPayEventFailure.serverError() = ServerError;
  const factory NonPayEventFailure.noNetwork() = NoNetwork;
}