// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'non_pay_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NonPayEventEventTearOff {
  const _$NonPayEventEventTearOff();

  NonPayEventFetched nonPayEventFetched() {
    return const NonPayEventFetched();
  }
}

/// @nodoc
const $NonPayEventEvent = _$NonPayEventEventTearOff();

/// @nodoc
mixin _$NonPayEventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nonPayEventFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nonPayEventFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonPayEventFetched value) nonPayEventFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonPayEventFetched value)? nonPayEventFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPayEventEventCopyWith<$Res> {
  factory $NonPayEventEventCopyWith(
          NonPayEventEvent value, $Res Function(NonPayEventEvent) then) =
      _$NonPayEventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonPayEventEventCopyWithImpl<$Res>
    implements $NonPayEventEventCopyWith<$Res> {
  _$NonPayEventEventCopyWithImpl(this._value, this._then);

  final NonPayEventEvent _value;
  // ignore: unused_field
  final $Res Function(NonPayEventEvent) _then;
}

/// @nodoc
abstract class $NonPayEventFetchedCopyWith<$Res> {
  factory $NonPayEventFetchedCopyWith(
          NonPayEventFetched value, $Res Function(NonPayEventFetched) then) =
      _$NonPayEventFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonPayEventFetchedCopyWithImpl<$Res>
    extends _$NonPayEventEventCopyWithImpl<$Res>
    implements $NonPayEventFetchedCopyWith<$Res> {
  _$NonPayEventFetchedCopyWithImpl(
      NonPayEventFetched _value, $Res Function(NonPayEventFetched) _then)
      : super(_value, (v) => _then(v as NonPayEventFetched));

  @override
  NonPayEventFetched get _value => super._value as NonPayEventFetched;
}

/// @nodoc
class _$NonPayEventFetched implements NonPayEventFetched {
  const _$NonPayEventFetched();

  @override
  String toString() {
    return 'NonPayEventEvent.nonPayEventFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NonPayEventFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nonPayEventFetched,
  }) {
    return nonPayEventFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nonPayEventFetched,
    required TResult orElse(),
  }) {
    if (nonPayEventFetched != null) {
      return nonPayEventFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonPayEventFetched value) nonPayEventFetched,
  }) {
    return nonPayEventFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonPayEventFetched value)? nonPayEventFetched,
    required TResult orElse(),
  }) {
    if (nonPayEventFetched != null) {
      return nonPayEventFetched(this);
    }
    return orElse();
  }
}

abstract class NonPayEventFetched implements NonPayEventEvent {
  const factory NonPayEventFetched() = _$NonPayEventFetched;
}

/// @nodoc
class _$NonPayEventStateTearOff {
  const _$NonPayEventStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<NonPayEvent> nonPayEvents) {
    return LoadedSuccessfully(
      nonPayEvents,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(NonPayEventFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $NonPayEventState = _$NonPayEventStateTearOff();

/// @nodoc
mixin _$NonPayEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NonPayEvent> nonPayEvents)
        loadedSuccessfully,
    required TResult Function(NonPayEventFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NonPayEvent> nonPayEvents)? loadedSuccessfully,
    TResult Function(NonPayEventFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPayEventStateCopyWith<$Res> {
  factory $NonPayEventStateCopyWith(
          NonPayEventState value, $Res Function(NonPayEventState) then) =
      _$NonPayEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonPayEventStateCopyWithImpl<$Res>
    implements $NonPayEventStateCopyWith<$Res> {
  _$NonPayEventStateCopyWithImpl(this._value, this._then);

  final NonPayEventState _value;
  // ignore: unused_field
  final $Res Function(NonPayEventState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$NonPayEventStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'NonPayEventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NonPayEvent> nonPayEvents)
        loadedSuccessfully,
    required TResult Function(NonPayEventFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NonPayEvent> nonPayEvents)? loadedSuccessfully,
    TResult Function(NonPayEventFailure failure)? loadedUnSuccessfully,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NonPayEventState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$NonPayEventStateCopyWithImpl<$Res>
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
    return 'NonPayEventState.loading()';
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
    required TResult Function(List<NonPayEvent> nonPayEvents)
        loadedSuccessfully,
    required TResult Function(NonPayEventFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NonPayEvent> nonPayEvents)? loadedSuccessfully,
    TResult Function(NonPayEventFailure failure)? loadedUnSuccessfully,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NonPayEventState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<NonPayEvent> nonPayEvents});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$NonPayEventStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? nonPayEvents = freezed,
  }) {
    return _then(LoadedSuccessfully(
      nonPayEvents == freezed
          ? _value.nonPayEvents
          : nonPayEvents // ignore: cast_nullable_to_non_nullable
              as List<NonPayEvent>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.nonPayEvents);

  @override
  final List<NonPayEvent> nonPayEvents;

  @override
  String toString() {
    return 'NonPayEventState.loadedSuccessfully(nonPayEvents: $nonPayEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.nonPayEvents, nonPayEvents) ||
                const DeepCollectionEquality()
                    .equals(other.nonPayEvents, nonPayEvents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nonPayEvents);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NonPayEvent> nonPayEvents)
        loadedSuccessfully,
    required TResult Function(NonPayEventFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(nonPayEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NonPayEvent> nonPayEvents)? loadedSuccessfully,
    TResult Function(NonPayEventFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(nonPayEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccessfully implements NonPayEventState {
  const factory LoadedSuccessfully(List<NonPayEvent> nonPayEvents) =
      _$LoadedSuccessfully;

  List<NonPayEvent> get nonPayEvents => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({NonPayEventFailure failure});

  $NonPayEventFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$NonPayEventStateCopyWithImpl<$Res>
    implements $LoadedUnsuccessfullyCopyWith<$Res> {
  _$LoadedUnsuccessfullyCopyWithImpl(
      LoadedUnsuccessfully _value, $Res Function(LoadedUnsuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedUnsuccessfully));

  @override
  LoadedUnsuccessfully get _value => super._value as LoadedUnsuccessfully;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(LoadedUnsuccessfully(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NonPayEventFailure,
    ));
  }

  @override
  $NonPayEventFailureCopyWith<$Res> get failure {
    return $NonPayEventFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final NonPayEventFailure failure;

  @override
  String toString() {
    return 'NonPayEventState.loadedUnSuccessfully(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedUnsuccessfully &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      _$LoadedUnsuccessfullyCopyWithImpl<LoadedUnsuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NonPayEvent> nonPayEvents)
        loadedSuccessfully,
    required TResult Function(NonPayEventFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NonPayEvent> nonPayEvents)? loadedSuccessfully,
    TResult Function(NonPayEventFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedUnSuccessfully != null) {
      return loadedUnSuccessfully(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedUnSuccessfully != null) {
      return loadedUnSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoadedUnsuccessfully implements NonPayEventState {
  const factory LoadedUnsuccessfully(NonPayEventFailure failure) =
      _$LoadedUnsuccessfully;

  NonPayEventFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
