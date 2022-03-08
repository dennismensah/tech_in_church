// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'non_pay_events_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NonPayEventsActionsEventTearOff {
  const _$NonPayEventsActionsEventTearOff();

  NonPayEventRegistered nonPayEventRegistered(int eventid) {
    return NonPayEventRegistered(
      eventid,
    );
  }
}

/// @nodoc
const $NonPayEventsActionsEvent = _$NonPayEventsActionsEventTearOff();

/// @nodoc
mixin _$NonPayEventsActionsEvent {
  int get eventid => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventid) nonPayEventRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventid)? nonPayEventRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonPayEventRegistered value)
        nonPayEventRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonPayEventRegistered value)? nonPayEventRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NonPayEventsActionsEventCopyWith<NonPayEventsActionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPayEventsActionsEventCopyWith<$Res> {
  factory $NonPayEventsActionsEventCopyWith(NonPayEventsActionsEvent value,
          $Res Function(NonPayEventsActionsEvent) then) =
      _$NonPayEventsActionsEventCopyWithImpl<$Res>;
  $Res call({int eventid});
}

/// @nodoc
class _$NonPayEventsActionsEventCopyWithImpl<$Res>
    implements $NonPayEventsActionsEventCopyWith<$Res> {
  _$NonPayEventsActionsEventCopyWithImpl(this._value, this._then);

  final NonPayEventsActionsEvent _value;
  // ignore: unused_field
  final $Res Function(NonPayEventsActionsEvent) _then;

  @override
  $Res call({
    Object? eventid = freezed,
  }) {
    return _then(_value.copyWith(
      eventid: eventid == freezed
          ? _value.eventid
          : eventid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $NonPayEventRegisteredCopyWith<$Res>
    implements $NonPayEventsActionsEventCopyWith<$Res> {
  factory $NonPayEventRegisteredCopyWith(NonPayEventRegistered value,
          $Res Function(NonPayEventRegistered) then) =
      _$NonPayEventRegisteredCopyWithImpl<$Res>;
  @override
  $Res call({int eventid});
}

/// @nodoc
class _$NonPayEventRegisteredCopyWithImpl<$Res>
    extends _$NonPayEventsActionsEventCopyWithImpl<$Res>
    implements $NonPayEventRegisteredCopyWith<$Res> {
  _$NonPayEventRegisteredCopyWithImpl(
      NonPayEventRegistered _value, $Res Function(NonPayEventRegistered) _then)
      : super(_value, (v) => _then(v as NonPayEventRegistered));

  @override
  NonPayEventRegistered get _value => super._value as NonPayEventRegistered;

  @override
  $Res call({
    Object? eventid = freezed,
  }) {
    return _then(NonPayEventRegistered(
      eventid == freezed
          ? _value.eventid
          : eventid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$NonPayEventRegistered implements NonPayEventRegistered {
  const _$NonPayEventRegistered(this.eventid);

  @override
  final int eventid;

  @override
  String toString() {
    return 'NonPayEventsActionsEvent.nonPayEventRegistered(eventid: $eventid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NonPayEventRegistered &&
            (identical(other.eventid, eventid) ||
                const DeepCollectionEquality().equals(other.eventid, eventid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventid);

  @JsonKey(ignore: true)
  @override
  $NonPayEventRegisteredCopyWith<NonPayEventRegistered> get copyWith =>
      _$NonPayEventRegisteredCopyWithImpl<NonPayEventRegistered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventid) nonPayEventRegistered,
  }) {
    return nonPayEventRegistered(eventid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventid)? nonPayEventRegistered,
    required TResult orElse(),
  }) {
    if (nonPayEventRegistered != null) {
      return nonPayEventRegistered(eventid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonPayEventRegistered value)
        nonPayEventRegistered,
  }) {
    return nonPayEventRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonPayEventRegistered value)? nonPayEventRegistered,
    required TResult orElse(),
  }) {
    if (nonPayEventRegistered != null) {
      return nonPayEventRegistered(this);
    }
    return orElse();
  }
}

abstract class NonPayEventRegistered implements NonPayEventsActionsEvent {
  const factory NonPayEventRegistered(int eventid) = _$NonPayEventRegistered;

  @override
  int get eventid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NonPayEventRegisteredCopyWith<NonPayEventRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NonPayEventsActionsStateTearOff {
  const _$NonPayEventsActionsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  Loading loading() {
    return const Loading();
  }

  RegisteredSuccessfully registeredSuccessfully() {
    return const RegisteredSuccessfully();
  }

  RegisteredUnsuccessfully registeredUnsuccessfully(
      NonPayEventFailure nonPayEventFailure) {
    return RegisteredUnsuccessfully(
      nonPayEventFailure,
    );
  }
}

/// @nodoc
const $NonPayEventsActionsState = _$NonPayEventsActionsStateTearOff();

/// @nodoc
mixin _$NonPayEventsActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registeredSuccessfully,
    required TResult Function(NonPayEventFailure nonPayEventFailure)
        registeredUnsuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registeredSuccessfully,
    TResult Function(NonPayEventFailure nonPayEventFailure)?
        registeredUnsuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(RegisteredSuccessfully value)
        registeredSuccessfully,
    required TResult Function(RegisteredUnsuccessfully value)
        registeredUnsuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(RegisteredSuccessfully value)? registeredSuccessfully,
    TResult Function(RegisteredUnsuccessfully value)? registeredUnsuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPayEventsActionsStateCopyWith<$Res> {
  factory $NonPayEventsActionsStateCopyWith(NonPayEventsActionsState value,
          $Res Function(NonPayEventsActionsState) then) =
      _$NonPayEventsActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonPayEventsActionsStateCopyWithImpl<$Res>
    implements $NonPayEventsActionsStateCopyWith<$Res> {
  _$NonPayEventsActionsStateCopyWithImpl(this._value, this._then);

  final NonPayEventsActionsState _value;
  // ignore: unused_field
  final $Res Function(NonPayEventsActionsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NonPayEventsActionsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NonPayEventsActionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registeredSuccessfully,
    required TResult Function(NonPayEventFailure nonPayEventFailure)
        registeredUnsuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registeredSuccessfully,
    TResult Function(NonPayEventFailure nonPayEventFailure)?
        registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(RegisteredSuccessfully value)
        registeredSuccessfully,
    required TResult Function(RegisteredUnsuccessfully value)
        registeredUnsuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(RegisteredSuccessfully value)? registeredSuccessfully,
    TResult Function(RegisteredUnsuccessfully value)? registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NonPayEventsActionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$NonPayEventsActionsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'NonPayEventsActionsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registeredSuccessfully,
    required TResult Function(NonPayEventFailure nonPayEventFailure)
        registeredUnsuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registeredSuccessfully,
    TResult Function(NonPayEventFailure nonPayEventFailure)?
        registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(RegisteredSuccessfully value)
        registeredSuccessfully,
    required TResult Function(RegisteredUnsuccessfully value)
        registeredUnsuccessfully,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(RegisteredSuccessfully value)? registeredSuccessfully,
    TResult Function(RegisteredUnsuccessfully value)? registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NonPayEventsActionsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $RegisteredSuccessfullyCopyWith<$Res> {
  factory $RegisteredSuccessfullyCopyWith(RegisteredSuccessfully value,
          $Res Function(RegisteredSuccessfully) then) =
      _$RegisteredSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisteredSuccessfullyCopyWithImpl<$Res>
    extends _$NonPayEventsActionsStateCopyWithImpl<$Res>
    implements $RegisteredSuccessfullyCopyWith<$Res> {
  _$RegisteredSuccessfullyCopyWithImpl(RegisteredSuccessfully _value,
      $Res Function(RegisteredSuccessfully) _then)
      : super(_value, (v) => _then(v as RegisteredSuccessfully));

  @override
  RegisteredSuccessfully get _value => super._value as RegisteredSuccessfully;
}

/// @nodoc
class _$RegisteredSuccessfully implements RegisteredSuccessfully {
  const _$RegisteredSuccessfully();

  @override
  String toString() {
    return 'NonPayEventsActionsState.registeredSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisteredSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registeredSuccessfully,
    required TResult Function(NonPayEventFailure nonPayEventFailure)
        registeredUnsuccessfully,
  }) {
    return registeredSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registeredSuccessfully,
    TResult Function(NonPayEventFailure nonPayEventFailure)?
        registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (registeredSuccessfully != null) {
      return registeredSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(RegisteredSuccessfully value)
        registeredSuccessfully,
    required TResult Function(RegisteredUnsuccessfully value)
        registeredUnsuccessfully,
  }) {
    return registeredSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(RegisteredSuccessfully value)? registeredSuccessfully,
    TResult Function(RegisteredUnsuccessfully value)? registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (registeredSuccessfully != null) {
      return registeredSuccessfully(this);
    }
    return orElse();
  }
}

abstract class RegisteredSuccessfully implements NonPayEventsActionsState {
  const factory RegisteredSuccessfully() = _$RegisteredSuccessfully;
}

/// @nodoc
abstract class $RegisteredUnsuccessfullyCopyWith<$Res> {
  factory $RegisteredUnsuccessfullyCopyWith(RegisteredUnsuccessfully value,
          $Res Function(RegisteredUnsuccessfully) then) =
      _$RegisteredUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({NonPayEventFailure nonPayEventFailure});

  $NonPayEventFailureCopyWith<$Res> get nonPayEventFailure;
}

/// @nodoc
class _$RegisteredUnsuccessfullyCopyWithImpl<$Res>
    extends _$NonPayEventsActionsStateCopyWithImpl<$Res>
    implements $RegisteredUnsuccessfullyCopyWith<$Res> {
  _$RegisteredUnsuccessfullyCopyWithImpl(RegisteredUnsuccessfully _value,
      $Res Function(RegisteredUnsuccessfully) _then)
      : super(_value, (v) => _then(v as RegisteredUnsuccessfully));

  @override
  RegisteredUnsuccessfully get _value =>
      super._value as RegisteredUnsuccessfully;

  @override
  $Res call({
    Object? nonPayEventFailure = freezed,
  }) {
    return _then(RegisteredUnsuccessfully(
      nonPayEventFailure == freezed
          ? _value.nonPayEventFailure
          : nonPayEventFailure // ignore: cast_nullable_to_non_nullable
              as NonPayEventFailure,
    ));
  }

  @override
  $NonPayEventFailureCopyWith<$Res> get nonPayEventFailure {
    return $NonPayEventFailureCopyWith<$Res>(_value.nonPayEventFailure,
        (value) {
      return _then(_value.copyWith(nonPayEventFailure: value));
    });
  }
}

/// @nodoc
class _$RegisteredUnsuccessfully implements RegisteredUnsuccessfully {
  const _$RegisteredUnsuccessfully(this.nonPayEventFailure);

  @override
  final NonPayEventFailure nonPayEventFailure;

  @override
  String toString() {
    return 'NonPayEventsActionsState.registeredUnsuccessfully(nonPayEventFailure: $nonPayEventFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisteredUnsuccessfully &&
            (identical(other.nonPayEventFailure, nonPayEventFailure) ||
                const DeepCollectionEquality()
                    .equals(other.nonPayEventFailure, nonPayEventFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nonPayEventFailure);

  @JsonKey(ignore: true)
  @override
  $RegisteredUnsuccessfullyCopyWith<RegisteredUnsuccessfully> get copyWith =>
      _$RegisteredUnsuccessfullyCopyWithImpl<RegisteredUnsuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registeredSuccessfully,
    required TResult Function(NonPayEventFailure nonPayEventFailure)
        registeredUnsuccessfully,
  }) {
    return registeredUnsuccessfully(nonPayEventFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registeredSuccessfully,
    TResult Function(NonPayEventFailure nonPayEventFailure)?
        registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (registeredUnsuccessfully != null) {
      return registeredUnsuccessfully(nonPayEventFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(RegisteredSuccessfully value)
        registeredSuccessfully,
    required TResult Function(RegisteredUnsuccessfully value)
        registeredUnsuccessfully,
  }) {
    return registeredUnsuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(RegisteredSuccessfully value)? registeredSuccessfully,
    TResult Function(RegisteredUnsuccessfully value)? registeredUnsuccessfully,
    required TResult orElse(),
  }) {
    if (registeredUnsuccessfully != null) {
      return registeredUnsuccessfully(this);
    }
    return orElse();
  }
}

abstract class RegisteredUnsuccessfully implements NonPayEventsActionsState {
  const factory RegisteredUnsuccessfully(
      NonPayEventFailure nonPayEventFailure) = _$RegisteredUnsuccessfully;

  NonPayEventFailure get nonPayEventFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredUnsuccessfullyCopyWith<RegisteredUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
