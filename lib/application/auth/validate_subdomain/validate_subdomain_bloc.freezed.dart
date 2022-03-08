// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'validate_subdomain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValidateSubdomainEventTearOff {
  const _$ValidateSubdomainEventTearOff();

  SubdomainValidated subdomainValidated(String subdomain) {
    return SubdomainValidated(
      subdomain,
    );
  }
}

/// @nodoc
const $ValidateSubdomainEvent = _$ValidateSubdomainEventTearOff();

/// @nodoc
mixin _$ValidateSubdomainEvent {
  String get subdomain => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subdomain) subdomainValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subdomain)? subdomainValidated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubdomainValidated value) subdomainValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubdomainValidated value)? subdomainValidated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateSubdomainEventCopyWith<ValidateSubdomainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateSubdomainEventCopyWith<$Res> {
  factory $ValidateSubdomainEventCopyWith(ValidateSubdomainEvent value,
          $Res Function(ValidateSubdomainEvent) then) =
      _$ValidateSubdomainEventCopyWithImpl<$Res>;
  $Res call({String subdomain});
}

/// @nodoc
class _$ValidateSubdomainEventCopyWithImpl<$Res>
    implements $ValidateSubdomainEventCopyWith<$Res> {
  _$ValidateSubdomainEventCopyWithImpl(this._value, this._then);

  final ValidateSubdomainEvent _value;
  // ignore: unused_field
  final $Res Function(ValidateSubdomainEvent) _then;

  @override
  $Res call({
    Object? subdomain = freezed,
  }) {
    return _then(_value.copyWith(
      subdomain: subdomain == freezed
          ? _value.subdomain
          : subdomain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SubdomainValidatedCopyWith<$Res>
    implements $ValidateSubdomainEventCopyWith<$Res> {
  factory $SubdomainValidatedCopyWith(
          SubdomainValidated value, $Res Function(SubdomainValidated) then) =
      _$SubdomainValidatedCopyWithImpl<$Res>;
  @override
  $Res call({String subdomain});
}

/// @nodoc
class _$SubdomainValidatedCopyWithImpl<$Res>
    extends _$ValidateSubdomainEventCopyWithImpl<$Res>
    implements $SubdomainValidatedCopyWith<$Res> {
  _$SubdomainValidatedCopyWithImpl(
      SubdomainValidated _value, $Res Function(SubdomainValidated) _then)
      : super(_value, (v) => _then(v as SubdomainValidated));

  @override
  SubdomainValidated get _value => super._value as SubdomainValidated;

  @override
  $Res call({
    Object? subdomain = freezed,
  }) {
    return _then(SubdomainValidated(
      subdomain == freezed
          ? _value.subdomain
          : subdomain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$SubdomainValidated implements SubdomainValidated {
  const _$SubdomainValidated(this.subdomain);

  @override
  final String subdomain;

  @override
  String toString() {
    return 'ValidateSubdomainEvent.subdomainValidated(subdomain: $subdomain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubdomainValidated &&
            (identical(other.subdomain, subdomain) ||
                const DeepCollectionEquality()
                    .equals(other.subdomain, subdomain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subdomain);

  @JsonKey(ignore: true)
  @override
  $SubdomainValidatedCopyWith<SubdomainValidated> get copyWith =>
      _$SubdomainValidatedCopyWithImpl<SubdomainValidated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subdomain) subdomainValidated,
  }) {
    return subdomainValidated(subdomain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subdomain)? subdomainValidated,
    required TResult orElse(),
  }) {
    if (subdomainValidated != null) {
      return subdomainValidated(subdomain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubdomainValidated value) subdomainValidated,
  }) {
    return subdomainValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubdomainValidated value)? subdomainValidated,
    required TResult orElse(),
  }) {
    if (subdomainValidated != null) {
      return subdomainValidated(this);
    }
    return orElse();
  }
}

abstract class SubdomainValidated implements ValidateSubdomainEvent {
  const factory SubdomainValidated(String subdomain) = _$SubdomainValidated;

  @override
  String get subdomain => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubdomainValidatedCopyWith<SubdomainValidated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ValidateSubdomainStateTearOff {
  const _$ValidateSubdomainStateTearOff();

  _ValidateSubdomainState call(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _ValidateSubdomainState(
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ValidateSubdomainState = _$ValidateSubdomainStateTearOff();

/// @nodoc
mixin _$ValidateSubdomainState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateSubdomainStateCopyWith<ValidateSubdomainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateSubdomainStateCopyWith<$Res> {
  factory $ValidateSubdomainStateCopyWith(ValidateSubdomainState value,
          $Res Function(ValidateSubdomainState) then) =
      _$ValidateSubdomainStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ValidateSubdomainStateCopyWithImpl<$Res>
    implements $ValidateSubdomainStateCopyWith<$Res> {
  _$ValidateSubdomainStateCopyWithImpl(this._value, this._then);

  final ValidateSubdomainState _value;
  // ignore: unused_field
  final $Res Function(ValidateSubdomainState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ValidateSubdomainStateCopyWith<$Res>
    implements $ValidateSubdomainStateCopyWith<$Res> {
  factory _$ValidateSubdomainStateCopyWith(_ValidateSubdomainState value,
          $Res Function(_ValidateSubdomainState) then) =
      __$ValidateSubdomainStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$ValidateSubdomainStateCopyWithImpl<$Res>
    extends _$ValidateSubdomainStateCopyWithImpl<$Res>
    implements _$ValidateSubdomainStateCopyWith<$Res> {
  __$ValidateSubdomainStateCopyWithImpl(_ValidateSubdomainState _value,
      $Res Function(_ValidateSubdomainState) _then)
      : super(_value, (v) => _then(v as _ValidateSubdomainState));

  @override
  _ValidateSubdomainState get _value => super._value as _ValidateSubdomainState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_ValidateSubdomainState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ValidateSubdomainState implements _ValidateSubdomainState {
  const _$_ValidateSubdomainState(
      {required this.isSubmitting, required this.authFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ValidateSubdomainState(isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidateSubdomainState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ValidateSubdomainStateCopyWith<_ValidateSubdomainState> get copyWith =>
      __$ValidateSubdomainStateCopyWithImpl<_ValidateSubdomainState>(
          this, _$identity);
}

abstract class _ValidateSubdomainState implements ValidateSubdomainState {
  const factory _ValidateSubdomainState(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_ValidateSubdomainState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValidateSubdomainStateCopyWith<_ValidateSubdomainState> get copyWith =>
      throw _privateConstructorUsedError;
}
