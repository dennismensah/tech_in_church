import 'package:freezed_annotation/freezed_annotation.dart';

part 'offering_failure.freezed.dart';

@freezed
 class OfferingFailure with _$OfferingFailure {
   const factory OfferingFailure.initial() = Initial;
  const factory OfferingFailure.serverError() = ServerError;
  const factory OfferingFailure.noNetwork() = NoNetwork;
}