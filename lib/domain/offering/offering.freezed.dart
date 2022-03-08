// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'offering.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offering _$OfferingFromJson(Map<String, dynamic> json) {
  return _Offering.fromJson(json);
}

/// @nodoc
class _$OfferingTearOff {
  const _$OfferingTearOff();

  _Offering call(
      {required String cardNumber,
      required String expirationDate,
      required int cvc,
      required int amount}) {
    return _Offering(
      cardNumber: cardNumber,
      expirationDate: expirationDate,
      cvc: cvc,
      amount: amount,
    );
  }

  Offering fromJson(Map<String, Object> json) {
    return Offering.fromJson(json);
  }
}

/// @nodoc
const $Offering = _$OfferingTearOff();

/// @nodoc
mixin _$Offering {
  String get cardNumber => throw _privateConstructorUsedError;
  String get expirationDate => throw _privateConstructorUsedError;
  int get cvc => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferingCopyWith<Offering> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingCopyWith<$Res> {
  factory $OfferingCopyWith(Offering value, $Res Function(Offering) then) =
      _$OfferingCopyWithImpl<$Res>;
  $Res call({String cardNumber, String expirationDate, int cvc, int amount});
}

/// @nodoc
class _$OfferingCopyWithImpl<$Res> implements $OfferingCopyWith<$Res> {
  _$OfferingCopyWithImpl(this._value, this._then);

  final Offering _value;
  // ignore: unused_field
  final $Res Function(Offering) _then;

  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expirationDate = freezed,
    Object? cvc = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OfferingCopyWith<$Res> implements $OfferingCopyWith<$Res> {
  factory _$OfferingCopyWith(_Offering value, $Res Function(_Offering) then) =
      __$OfferingCopyWithImpl<$Res>;
  @override
  $Res call({String cardNumber, String expirationDate, int cvc, int amount});
}

/// @nodoc
class __$OfferingCopyWithImpl<$Res> extends _$OfferingCopyWithImpl<$Res>
    implements _$OfferingCopyWith<$Res> {
  __$OfferingCopyWithImpl(_Offering _value, $Res Function(_Offering) _then)
      : super(_value, (v) => _then(v as _Offering));

  @override
  _Offering get _value => super._value as _Offering;

  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expirationDate = freezed,
    Object? cvc = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Offering(
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Offering implements _Offering {
  const _$_Offering(
      {required this.cardNumber,
      required this.expirationDate,
      required this.cvc,
      required this.amount});

  factory _$_Offering.fromJson(Map<String, dynamic> json) =>
      _$_$_OfferingFromJson(json);

  @override
  final String cardNumber;
  @override
  final String expirationDate;
  @override
  final int cvc;
  @override
  final int amount;

  @override
  String toString() {
    return 'Offering(cardNumber: $cardNumber, expirationDate: $expirationDate, cvc: $cvc, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Offering &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)) &&
            (identical(other.cvc, cvc) ||
                const DeepCollectionEquality().equals(other.cvc, cvc)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(expirationDate) ^
      const DeepCollectionEquality().hash(cvc) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$OfferingCopyWith<_Offering> get copyWith =>
      __$OfferingCopyWithImpl<_Offering>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OfferingToJson(this);
  }
}

abstract class _Offering implements Offering {
  const factory _Offering(
      {required String cardNumber,
      required String expirationDate,
      required int cvc,
      required int amount}) = _$_Offering;

  factory _Offering.fromJson(Map<String, dynamic> json) = _$_Offering.fromJson;

  @override
  String get cardNumber => throw _privateConstructorUsedError;
  @override
  String get expirationDate => throw _privateConstructorUsedError;
  @override
  int get cvc => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfferingCopyWith<_Offering> get copyWith =>
      throw _privateConstructorUsedError;
}
