// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offering.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offering _$_$_OfferingFromJson(Map<String, dynamic> json) {
  return _$_Offering(
    cardNumber: json['cardNumber'] as String,
    expirationDate: json['expirationDate'] as String,
    cvc: json['cvc'] as int,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$_$_OfferingToJson(_$_Offering instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'expirationDate': instance.expirationDate,
      'cvc': instance.cvc,
      'amount': instance.amount,
    };
