import 'package:freezed_annotation/freezed_annotation.dart';

part 'offering.freezed.dart';
part 'offering.g.dart';

@freezed
class Offering with _$Offering {
  const factory Offering({
    required String cardNumber,
    required String expirationDate,
    required int cvc,
    required int amount,
  }) = _Offering;

  factory Offering.fromJson(Map<String, dynamic> json) =>
      _$OfferingFromJson(json);
}
