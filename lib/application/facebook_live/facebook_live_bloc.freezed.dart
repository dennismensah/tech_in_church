// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facebook_live_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FacebookLiveEventTearOff {
  const _$FacebookLiveEventTearOff();

  FacebookLiveVideosFetched facebookLiveVideosFetched() {
    return const FacebookLiveVideosFetched();
  }
}

/// @nodoc
const $FacebookLiveEvent = _$FacebookLiveEventTearOff();

/// @nodoc
mixin _$FacebookLiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebookLiveVideosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebookLiveVideosFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FacebookLiveVideosFetched value)
        facebookLiveVideosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FacebookLiveVideosFetched value)?
        facebookLiveVideosFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookLiveEventCopyWith<$Res> {
  factory $FacebookLiveEventCopyWith(
          FacebookLiveEvent value, $Res Function(FacebookLiveEvent) then) =
      _$FacebookLiveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FacebookLiveEventCopyWithImpl<$Res>
    implements $FacebookLiveEventCopyWith<$Res> {
  _$FacebookLiveEventCopyWithImpl(this._value, this._then);

  final FacebookLiveEvent _value;
  // ignore: unused_field
  final $Res Function(FacebookLiveEvent) _then;
}

/// @nodoc
abstract class $FacebookLiveVideosFetchedCopyWith<$Res> {
  factory $FacebookLiveVideosFetchedCopyWith(FacebookLiveVideosFetched value,
          $Res Function(FacebookLiveVideosFetched) then) =
      _$FacebookLiveVideosFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FacebookLiveVideosFetchedCopyWithImpl<$Res>
    extends _$FacebookLiveEventCopyWithImpl<$Res>
    implements $FacebookLiveVideosFetchedCopyWith<$Res> {
  _$FacebookLiveVideosFetchedCopyWithImpl(FacebookLiveVideosFetched _value,
      $Res Function(FacebookLiveVideosFetched) _then)
      : super(_value, (v) => _then(v as FacebookLiveVideosFetched));

  @override
  FacebookLiveVideosFetched get _value =>
      super._value as FacebookLiveVideosFetched;
}

/// @nodoc
class _$FacebookLiveVideosFetched implements FacebookLiveVideosFetched {
  const _$FacebookLiveVideosFetched();

  @override
  String toString() {
    return 'FacebookLiveEvent.facebookLiveVideosFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FacebookLiveVideosFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebookLiveVideosFetched,
  }) {
    return facebookLiveVideosFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebookLiveVideosFetched,
    required TResult orElse(),
  }) {
    if (facebookLiveVideosFetched != null) {
      return facebookLiveVideosFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FacebookLiveVideosFetched value)
        facebookLiveVideosFetched,
  }) {
    return facebookLiveVideosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FacebookLiveVideosFetched value)?
        facebookLiveVideosFetched,
    required TResult orElse(),
  }) {
    if (facebookLiveVideosFetched != null) {
      return facebookLiveVideosFetched(this);
    }
    return orElse();
  }
}

abstract class FacebookLiveVideosFetched implements FacebookLiveEvent {
  const factory FacebookLiveVideosFetched() = _$FacebookLiveVideosFetched;
}

/// @nodoc
class _$FacebookLiveStateTearOff {
  const _$FacebookLiveStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<FacebookLive> facebookLiveVideos) {
    return LoadedSuccessfully(
      facebookLiveVideos,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(FacebookLiveFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $FacebookLiveState = _$FacebookLiveStateTearOff();

/// @nodoc
mixin _$FacebookLiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FacebookLive> facebookLiveVideos)
        loadedSuccessfully,
    required TResult Function(FacebookLiveFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FacebookLive> facebookLiveVideos)? loadedSuccessfully,
    TResult Function(FacebookLiveFailure failure)? loadedUnSuccessfully,
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
abstract class $FacebookLiveStateCopyWith<$Res> {
  factory $FacebookLiveStateCopyWith(
          FacebookLiveState value, $Res Function(FacebookLiveState) then) =
      _$FacebookLiveStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FacebookLiveStateCopyWithImpl<$Res>
    implements $FacebookLiveStateCopyWith<$Res> {
  _$FacebookLiveStateCopyWithImpl(this._value, this._then);

  final FacebookLiveState _value;
  // ignore: unused_field
  final $Res Function(FacebookLiveState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FacebookLiveStateCopyWithImpl<$Res>
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
    return 'FacebookLiveState.initial()';
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
    required TResult Function(List<FacebookLive> facebookLiveVideos)
        loadedSuccessfully,
    required TResult Function(FacebookLiveFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FacebookLive> facebookLiveVideos)? loadedSuccessfully,
    TResult Function(FacebookLiveFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements FacebookLiveState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FacebookLiveStateCopyWithImpl<$Res>
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
    return 'FacebookLiveState.loading()';
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
    required TResult Function(List<FacebookLive> facebookLiveVideos)
        loadedSuccessfully,
    required TResult Function(FacebookLiveFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FacebookLive> facebookLiveVideos)? loadedSuccessfully,
    TResult Function(FacebookLiveFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements FacebookLiveState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<FacebookLive> facebookLiveVideos});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$FacebookLiveStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? facebookLiveVideos = freezed,
  }) {
    return _then(LoadedSuccessfully(
      facebookLiveVideos == freezed
          ? _value.facebookLiveVideos
          : facebookLiveVideos // ignore: cast_nullable_to_non_nullable
              as List<FacebookLive>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.facebookLiveVideos);

  @override
  final List<FacebookLive> facebookLiveVideos;

  @override
  String toString() {
    return 'FacebookLiveState.loadedSuccessfully(facebookLiveVideos: $facebookLiveVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.facebookLiveVideos, facebookLiveVideos) ||
                const DeepCollectionEquality()
                    .equals(other.facebookLiveVideos, facebookLiveVideos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(facebookLiveVideos);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FacebookLive> facebookLiveVideos)
        loadedSuccessfully,
    required TResult Function(FacebookLiveFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(facebookLiveVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FacebookLive> facebookLiveVideos)? loadedSuccessfully,
    TResult Function(FacebookLiveFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(facebookLiveVideos);
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

abstract class LoadedSuccessfully implements FacebookLiveState {
  const factory LoadedSuccessfully(List<FacebookLive> facebookLiveVideos) =
      _$LoadedSuccessfully;

  List<FacebookLive> get facebookLiveVideos =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({FacebookLiveFailure failure});

  $FacebookLiveFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$FacebookLiveStateCopyWithImpl<$Res>
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
              as FacebookLiveFailure,
    ));
  }

  @override
  $FacebookLiveFailureCopyWith<$Res> get failure {
    return $FacebookLiveFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final FacebookLiveFailure failure;

  @override
  String toString() {
    return 'FacebookLiveState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(List<FacebookLive> facebookLiveVideos)
        loadedSuccessfully,
    required TResult Function(FacebookLiveFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FacebookLive> facebookLiveVideos)? loadedSuccessfully,
    TResult Function(FacebookLiveFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements FacebookLiveState {
  const factory LoadedUnsuccessfully(FacebookLiveFailure failure) =
      _$LoadedUnsuccessfully;

  FacebookLiveFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
