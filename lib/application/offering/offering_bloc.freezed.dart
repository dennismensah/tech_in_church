// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'offering_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfferingEventTearOff {
  const _$OfferingEventTearOff();

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  CardNumberChanged cardNumberChanged(String cardNumberStr) {
    return CardNumberChanged(
      cardNumberStr,
    );
  }

  ExpirationDateChanged expirationDateChanged(String expirationDateStr) {
    return ExpirationDateChanged(
      expirationDateStr,
    );
  }

  CvcChanged cvcChanged(String cvcStr) {
    return CvcChanged(
      cvcStr,
    );
  }

  AmountChanged amountChanged(String amountStr) {
    return AmountChanged(
      amountStr,
    );
  }

  MadeOffering madeOffering() {
    return const MadeOffering();
  }

  UpdatedServer updatedServer() {
    return const UpdatedServer();
  }
}

/// @nodoc
const $OfferingEvent = _$OfferingEventTearOff();

/// @nodoc
mixin _$OfferingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingEventCopyWith<$Res> {
  factory $OfferingEventCopyWith(
          OfferingEvent value, $Res Function(OfferingEvent) then) =
      _$OfferingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfferingEventCopyWithImpl<$Res>
    implements $OfferingEventCopyWith<$Res> {
  _$OfferingEventCopyWithImpl(this._value, this._then);

  final OfferingEvent _value;
  // ignore: unused_field
  final $Res Function(OfferingEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$OfferingEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'OfferingEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements OfferingEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardNumberChangedCopyWith<$Res> {
  factory $CardNumberChangedCopyWith(
          CardNumberChanged value, $Res Function(CardNumberChanged) then) =
      _$CardNumberChangedCopyWithImpl<$Res>;
  $Res call({String cardNumberStr});
}

/// @nodoc
class _$CardNumberChangedCopyWithImpl<$Res>
    extends _$OfferingEventCopyWithImpl<$Res>
    implements $CardNumberChangedCopyWith<$Res> {
  _$CardNumberChangedCopyWithImpl(
      CardNumberChanged _value, $Res Function(CardNumberChanged) _then)
      : super(_value, (v) => _then(v as CardNumberChanged));

  @override
  CardNumberChanged get _value => super._value as CardNumberChanged;

  @override
  $Res call({
    Object? cardNumberStr = freezed,
  }) {
    return _then(CardNumberChanged(
      cardNumberStr == freezed
          ? _value.cardNumberStr
          : cardNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CardNumberChanged implements CardNumberChanged {
  const _$CardNumberChanged(this.cardNumberStr);

  @override
  final String cardNumberStr;

  @override
  String toString() {
    return 'OfferingEvent.cardNumberChanged(cardNumberStr: $cardNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardNumberChanged &&
            (identical(other.cardNumberStr, cardNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumberStr, cardNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardNumberStr);

  @JsonKey(ignore: true)
  @override
  $CardNumberChangedCopyWith<CardNumberChanged> get copyWith =>
      _$CardNumberChangedCopyWithImpl<CardNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return cardNumberChanged(cardNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(cardNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return cardNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(this);
    }
    return orElse();
  }
}

abstract class CardNumberChanged implements OfferingEvent {
  const factory CardNumberChanged(String cardNumberStr) = _$CardNumberChanged;

  String get cardNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardNumberChangedCopyWith<CardNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpirationDateChangedCopyWith<$Res> {
  factory $ExpirationDateChangedCopyWith(ExpirationDateChanged value,
          $Res Function(ExpirationDateChanged) then) =
      _$ExpirationDateChangedCopyWithImpl<$Res>;
  $Res call({String expirationDateStr});
}

/// @nodoc
class _$ExpirationDateChangedCopyWithImpl<$Res>
    extends _$OfferingEventCopyWithImpl<$Res>
    implements $ExpirationDateChangedCopyWith<$Res> {
  _$ExpirationDateChangedCopyWithImpl(
      ExpirationDateChanged _value, $Res Function(ExpirationDateChanged) _then)
      : super(_value, (v) => _then(v as ExpirationDateChanged));

  @override
  ExpirationDateChanged get _value => super._value as ExpirationDateChanged;

  @override
  $Res call({
    Object? expirationDateStr = freezed,
  }) {
    return _then(ExpirationDateChanged(
      expirationDateStr == freezed
          ? _value.expirationDateStr
          : expirationDateStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ExpirationDateChanged implements ExpirationDateChanged {
  const _$ExpirationDateChanged(this.expirationDateStr);

  @override
  final String expirationDateStr;

  @override
  String toString() {
    return 'OfferingEvent.expirationDateChanged(expirationDateStr: $expirationDateStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExpirationDateChanged &&
            (identical(other.expirationDateStr, expirationDateStr) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDateStr, expirationDateStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(expirationDateStr);

  @JsonKey(ignore: true)
  @override
  $ExpirationDateChangedCopyWith<ExpirationDateChanged> get copyWith =>
      _$ExpirationDateChangedCopyWithImpl<ExpirationDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return expirationDateChanged(expirationDateStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (expirationDateChanged != null) {
      return expirationDateChanged(expirationDateStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return expirationDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (expirationDateChanged != null) {
      return expirationDateChanged(this);
    }
    return orElse();
  }
}

abstract class ExpirationDateChanged implements OfferingEvent {
  const factory ExpirationDateChanged(String expirationDateStr) =
      _$ExpirationDateChanged;

  String get expirationDateStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpirationDateChangedCopyWith<ExpirationDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvcChangedCopyWith<$Res> {
  factory $CvcChangedCopyWith(
          CvcChanged value, $Res Function(CvcChanged) then) =
      _$CvcChangedCopyWithImpl<$Res>;
  $Res call({String cvcStr});
}

/// @nodoc
class _$CvcChangedCopyWithImpl<$Res> extends _$OfferingEventCopyWithImpl<$Res>
    implements $CvcChangedCopyWith<$Res> {
  _$CvcChangedCopyWithImpl(CvcChanged _value, $Res Function(CvcChanged) _then)
      : super(_value, (v) => _then(v as CvcChanged));

  @override
  CvcChanged get _value => super._value as CvcChanged;

  @override
  $Res call({
    Object? cvcStr = freezed,
  }) {
    return _then(CvcChanged(
      cvcStr == freezed
          ? _value.cvcStr
          : cvcStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CvcChanged implements CvcChanged {
  const _$CvcChanged(this.cvcStr);

  @override
  final String cvcStr;

  @override
  String toString() {
    return 'OfferingEvent.cvcChanged(cvcStr: $cvcStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CvcChanged &&
            (identical(other.cvcStr, cvcStr) ||
                const DeepCollectionEquality().equals(other.cvcStr, cvcStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cvcStr);

  @JsonKey(ignore: true)
  @override
  $CvcChangedCopyWith<CvcChanged> get copyWith =>
      _$CvcChangedCopyWithImpl<CvcChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return cvcChanged(cvcStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (cvcChanged != null) {
      return cvcChanged(cvcStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return cvcChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (cvcChanged != null) {
      return cvcChanged(this);
    }
    return orElse();
  }
}

abstract class CvcChanged implements OfferingEvent {
  const factory CvcChanged(String cvcStr) = _$CvcChanged;

  String get cvcStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CvcChangedCopyWith<CvcChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountChangedCopyWith<$Res> {
  factory $AmountChangedCopyWith(
          AmountChanged value, $Res Function(AmountChanged) then) =
      _$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amountStr});
}

/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    extends _$OfferingEventCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(
      AmountChanged _value, $Res Function(AmountChanged) _then)
      : super(_value, (v) => _then(v as AmountChanged));

  @override
  AmountChanged get _value => super._value as AmountChanged;

  @override
  $Res call({
    Object? amountStr = freezed,
  }) {
    return _then(AmountChanged(
      amountStr == freezed
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'OfferingEvent.amountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmountChanged &&
            (identical(other.amountStr, amountStr) ||
                const DeepCollectionEquality()
                    .equals(other.amountStr, amountStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amountStr);

  @JsonKey(ignore: true)
  @override
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements OfferingEvent {
  const factory AmountChanged(String amountStr) = _$AmountChanged;

  String get amountStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MadeOfferingCopyWith<$Res> {
  factory $MadeOfferingCopyWith(
          MadeOffering value, $Res Function(MadeOffering) then) =
      _$MadeOfferingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MadeOfferingCopyWithImpl<$Res> extends _$OfferingEventCopyWithImpl<$Res>
    implements $MadeOfferingCopyWith<$Res> {
  _$MadeOfferingCopyWithImpl(
      MadeOffering _value, $Res Function(MadeOffering) _then)
      : super(_value, (v) => _then(v as MadeOffering));

  @override
  MadeOffering get _value => super._value as MadeOffering;
}

/// @nodoc
class _$MadeOffering implements MadeOffering {
  const _$MadeOffering();

  @override
  String toString() {
    return 'OfferingEvent.madeOffering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MadeOffering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return madeOffering();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (madeOffering != null) {
      return madeOffering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return madeOffering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (madeOffering != null) {
      return madeOffering(this);
    }
    return orElse();
  }
}

abstract class MadeOffering implements OfferingEvent {
  const factory MadeOffering() = _$MadeOffering;
}

/// @nodoc
abstract class $UpdatedServerCopyWith<$Res> {
  factory $UpdatedServerCopyWith(
          UpdatedServer value, $Res Function(UpdatedServer) then) =
      _$UpdatedServerCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatedServerCopyWithImpl<$Res>
    extends _$OfferingEventCopyWithImpl<$Res>
    implements $UpdatedServerCopyWith<$Res> {
  _$UpdatedServerCopyWithImpl(
      UpdatedServer _value, $Res Function(UpdatedServer) _then)
      : super(_value, (v) => _then(v as UpdatedServer));

  @override
  UpdatedServer get _value => super._value as UpdatedServer;
}

/// @nodoc
class _$UpdatedServer implements UpdatedServer {
  const _$UpdatedServer();

  @override
  String toString() {
    return 'OfferingEvent.updatedServer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatedServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String cardNumberStr) cardNumberChanged,
    required TResult Function(String expirationDateStr) expirationDateChanged,
    required TResult Function(String cvcStr) cvcChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function() madeOffering,
    required TResult Function() updatedServer,
  }) {
    return updatedServer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String cardNumberStr)? cardNumberChanged,
    TResult Function(String expirationDateStr)? expirationDateChanged,
    TResult Function(String cvcStr)? cvcChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function()? madeOffering,
    TResult Function()? updatedServer,
    required TResult orElse(),
  }) {
    if (updatedServer != null) {
      return updatedServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CardNumberChanged value) cardNumberChanged,
    required TResult Function(ExpirationDateChanged value)
        expirationDateChanged,
    required TResult Function(CvcChanged value) cvcChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(MadeOffering value) madeOffering,
    required TResult Function(UpdatedServer value) updatedServer,
  }) {
    return updatedServer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CardNumberChanged value)? cardNumberChanged,
    TResult Function(ExpirationDateChanged value)? expirationDateChanged,
    TResult Function(CvcChanged value)? cvcChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(MadeOffering value)? madeOffering,
    TResult Function(UpdatedServer value)? updatedServer,
    required TResult orElse(),
  }) {
    if (updatedServer != null) {
      return updatedServer(this);
    }
    return orElse();
  }
}

abstract class UpdatedServer implements OfferingEvent {
  const factory UpdatedServer() = _$UpdatedServer;
}

/// @nodoc
class _$OfferingStateTearOff {
  const _$OfferingStateTearOff();

  _OfferingState call(
      {required RequiredField cardNumber,
      required Date expirationDate,
      required RequiredField cvc,
      required RequiredField amount,
      required RequiredField name,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<OfferingFailure, String>>
          authFailureOrSuccessOption,
      required Option<Either<OfferingFailure, Unit>>
          updateFailureOrSuccessOption}) {
    return _OfferingState(
      cardNumber: cardNumber,
      expirationDate: expirationDate,
      cvc: cvc,
      amount: amount,
      name: name,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      updateFailureOrSuccessOption: updateFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $OfferingState = _$OfferingStateTearOff();

/// @nodoc
mixin _$OfferingState {
  RequiredField get cardNumber => throw _privateConstructorUsedError;
  Date get expirationDate => throw _privateConstructorUsedError;
  RequiredField get cvc => throw _privateConstructorUsedError;
  RequiredField get amount => throw _privateConstructorUsedError;
  RequiredField get name => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<OfferingFailure, String>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<OfferingFailure, Unit>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferingStateCopyWith<OfferingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingStateCopyWith<$Res> {
  factory $OfferingStateCopyWith(
          OfferingState value, $Res Function(OfferingState) then) =
      _$OfferingStateCopyWithImpl<$Res>;
  $Res call(
      {RequiredField cardNumber,
      Date expirationDate,
      RequiredField cvc,
      RequiredField amount,
      RequiredField name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<OfferingFailure, String>> authFailureOrSuccessOption,
      Option<Either<OfferingFailure, Unit>> updateFailureOrSuccessOption});
}

/// @nodoc
class _$OfferingStateCopyWithImpl<$Res>
    implements $OfferingStateCopyWith<$Res> {
  _$OfferingStateCopyWithImpl(this._value, this._then);

  final OfferingState _value;
  // ignore: unused_field
  final $Res Function(OfferingState) _then;

  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expirationDate = freezed,
    Object? cvc = freezed,
    Object? amount = freezed,
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? updateFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as Date,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OfferingFailure, String>>,
      updateFailureOrSuccessOption: updateFailureOrSuccessOption == freezed
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OfferingFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$OfferingStateCopyWith<$Res>
    implements $OfferingStateCopyWith<$Res> {
  factory _$OfferingStateCopyWith(
          _OfferingState value, $Res Function(_OfferingState) then) =
      __$OfferingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequiredField cardNumber,
      Date expirationDate,
      RequiredField cvc,
      RequiredField amount,
      RequiredField name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<OfferingFailure, String>> authFailureOrSuccessOption,
      Option<Either<OfferingFailure, Unit>> updateFailureOrSuccessOption});
}

/// @nodoc
class __$OfferingStateCopyWithImpl<$Res>
    extends _$OfferingStateCopyWithImpl<$Res>
    implements _$OfferingStateCopyWith<$Res> {
  __$OfferingStateCopyWithImpl(
      _OfferingState _value, $Res Function(_OfferingState) _then)
      : super(_value, (v) => _then(v as _OfferingState));

  @override
  _OfferingState get _value => super._value as _OfferingState;

  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expirationDate = freezed,
    Object? cvc = freezed,
    Object? amount = freezed,
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? updateFailureOrSuccessOption = freezed,
  }) {
    return _then(_OfferingState(
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as Date,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OfferingFailure, String>>,
      updateFailureOrSuccessOption: updateFailureOrSuccessOption == freezed
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OfferingFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_OfferingState implements _OfferingState {
  const _$_OfferingState(
      {required this.cardNumber,
      required this.expirationDate,
      required this.cvc,
      required this.amount,
      required this.name,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption,
      required this.updateFailureOrSuccessOption});

  @override
  final RequiredField cardNumber;
  @override
  final Date expirationDate;
  @override
  final RequiredField cvc;
  @override
  final RequiredField amount;
  @override
  final RequiredField name;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<OfferingFailure, String>> authFailureOrSuccessOption;
  @override
  final Option<Either<OfferingFailure, Unit>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'OfferingState(cardNumber: $cardNumber, expirationDate: $expirationDate, cvc: $cvc, amount: $amount, name: $name, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfferingState &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)) &&
            (identical(other.cvc, cvc) ||
                const DeepCollectionEquality().equals(other.cvc, cvc)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(expirationDate) ^
      const DeepCollectionEquality().hash(cvc) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(updateFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OfferingStateCopyWith<_OfferingState> get copyWith =>
      __$OfferingStateCopyWithImpl<_OfferingState>(this, _$identity);
}

abstract class _OfferingState implements OfferingState {
  const factory _OfferingState(
      {required RequiredField cardNumber,
      required Date expirationDate,
      required RequiredField cvc,
      required RequiredField amount,
      required RequiredField name,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<OfferingFailure, String>>
          authFailureOrSuccessOption,
      required Option<Either<OfferingFailure, Unit>>
          updateFailureOrSuccessOption}) = _$_OfferingState;

  @override
  RequiredField get cardNumber => throw _privateConstructorUsedError;
  @override
  Date get expirationDate => throw _privateConstructorUsedError;
  @override
  RequiredField get cvc => throw _privateConstructorUsedError;
  @override
  RequiredField get amount => throw _privateConstructorUsedError;
  @override
  RequiredField get name => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<OfferingFailure, String>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<OfferingFailure, Unit>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfferingStateCopyWith<_OfferingState> get copyWith =>
      throw _privateConstructorUsedError;
}
