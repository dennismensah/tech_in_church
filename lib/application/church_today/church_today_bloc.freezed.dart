// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'church_today_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChurchTodayEventTearOff {
  const _$ChurchTodayEventTearOff();

  ChurchTodayRecordsFetched churchTodayRecordsFetched() {
    return const ChurchTodayRecordsFetched();
  }
}

/// @nodoc
const $ChurchTodayEvent = _$ChurchTodayEventTearOff();

/// @nodoc
mixin _$ChurchTodayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() churchTodayRecordsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? churchTodayRecordsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChurchTodayRecordsFetched value)
        churchTodayRecordsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChurchTodayRecordsFetched value)?
        churchTodayRecordsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchTodayEventCopyWith<$Res> {
  factory $ChurchTodayEventCopyWith(
          ChurchTodayEvent value, $Res Function(ChurchTodayEvent) then) =
      _$ChurchTodayEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChurchTodayEventCopyWithImpl<$Res>
    implements $ChurchTodayEventCopyWith<$Res> {
  _$ChurchTodayEventCopyWithImpl(this._value, this._then);

  final ChurchTodayEvent _value;
  // ignore: unused_field
  final $Res Function(ChurchTodayEvent) _then;
}

/// @nodoc
abstract class $ChurchTodayRecordsFetchedCopyWith<$Res> {
  factory $ChurchTodayRecordsFetchedCopyWith(ChurchTodayRecordsFetched value,
          $Res Function(ChurchTodayRecordsFetched) then) =
      _$ChurchTodayRecordsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChurchTodayRecordsFetchedCopyWithImpl<$Res>
    extends _$ChurchTodayEventCopyWithImpl<$Res>
    implements $ChurchTodayRecordsFetchedCopyWith<$Res> {
  _$ChurchTodayRecordsFetchedCopyWithImpl(ChurchTodayRecordsFetched _value,
      $Res Function(ChurchTodayRecordsFetched) _then)
      : super(_value, (v) => _then(v as ChurchTodayRecordsFetched));

  @override
  ChurchTodayRecordsFetched get _value =>
      super._value as ChurchTodayRecordsFetched;
}

/// @nodoc
class _$ChurchTodayRecordsFetched implements ChurchTodayRecordsFetched {
  const _$ChurchTodayRecordsFetched();

  @override
  String toString() {
    return 'ChurchTodayEvent.churchTodayRecordsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChurchTodayRecordsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() churchTodayRecordsFetched,
  }) {
    return churchTodayRecordsFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? churchTodayRecordsFetched,
    required TResult orElse(),
  }) {
    if (churchTodayRecordsFetched != null) {
      return churchTodayRecordsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChurchTodayRecordsFetched value)
        churchTodayRecordsFetched,
  }) {
    return churchTodayRecordsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChurchTodayRecordsFetched value)?
        churchTodayRecordsFetched,
    required TResult orElse(),
  }) {
    if (churchTodayRecordsFetched != null) {
      return churchTodayRecordsFetched(this);
    }
    return orElse();
  }
}

abstract class ChurchTodayRecordsFetched implements ChurchTodayEvent {
  const factory ChurchTodayRecordsFetched() = _$ChurchTodayRecordsFetched;
}

/// @nodoc
class _$ChurchTodayStateTearOff {
  const _$ChurchTodayStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<ChurchToday> churchTodayRecords) {
    return LoadedSuccessfully(
      churchTodayRecords,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(ChurchTodayFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $ChurchTodayState = _$ChurchTodayStateTearOff();

/// @nodoc
mixin _$ChurchTodayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChurchToday> churchTodayRecords)
        loadedSuccessfully,
    required TResult Function(ChurchTodayFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChurchToday> churchTodayRecords)? loadedSuccessfully,
    TResult Function(ChurchTodayFailure failure)? loadedUnSuccessfully,
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
abstract class $ChurchTodayStateCopyWith<$Res> {
  factory $ChurchTodayStateCopyWith(
          ChurchTodayState value, $Res Function(ChurchTodayState) then) =
      _$ChurchTodayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChurchTodayStateCopyWithImpl<$Res>
    implements $ChurchTodayStateCopyWith<$Res> {
  _$ChurchTodayStateCopyWithImpl(this._value, this._then);

  final ChurchTodayState _value;
  // ignore: unused_field
  final $Res Function(ChurchTodayState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ChurchTodayStateCopyWithImpl<$Res>
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
    return 'ChurchTodayState.initial()';
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
    required TResult Function(List<ChurchToday> churchTodayRecords)
        loadedSuccessfully,
    required TResult Function(ChurchTodayFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChurchToday> churchTodayRecords)? loadedSuccessfully,
    TResult Function(ChurchTodayFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements ChurchTodayState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ChurchTodayStateCopyWithImpl<$Res>
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
    return 'ChurchTodayState.loading()';
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
    required TResult Function(List<ChurchToday> churchTodayRecords)
        loadedSuccessfully,
    required TResult Function(ChurchTodayFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChurchToday> churchTodayRecords)? loadedSuccessfully,
    TResult Function(ChurchTodayFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements ChurchTodayState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<ChurchToday> churchTodayRecords});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$ChurchTodayStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? churchTodayRecords = freezed,
  }) {
    return _then(LoadedSuccessfully(
      churchTodayRecords == freezed
          ? _value.churchTodayRecords
          : churchTodayRecords // ignore: cast_nullable_to_non_nullable
              as List<ChurchToday>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.churchTodayRecords);

  @override
  final List<ChurchToday> churchTodayRecords;

  @override
  String toString() {
    return 'ChurchTodayState.loadedSuccessfully(churchTodayRecords: $churchTodayRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.churchTodayRecords, churchTodayRecords) ||
                const DeepCollectionEquality()
                    .equals(other.churchTodayRecords, churchTodayRecords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(churchTodayRecords);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChurchToday> churchTodayRecords)
        loadedSuccessfully,
    required TResult Function(ChurchTodayFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(churchTodayRecords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChurchToday> churchTodayRecords)? loadedSuccessfully,
    TResult Function(ChurchTodayFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(churchTodayRecords);
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

abstract class LoadedSuccessfully implements ChurchTodayState {
  const factory LoadedSuccessfully(List<ChurchToday> churchTodayRecords) =
      _$LoadedSuccessfully;

  List<ChurchToday> get churchTodayRecords =>
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
  $Res call({ChurchTodayFailure failure});

  $ChurchTodayFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$ChurchTodayStateCopyWithImpl<$Res>
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
              as ChurchTodayFailure,
    ));
  }

  @override
  $ChurchTodayFailureCopyWith<$Res> get failure {
    return $ChurchTodayFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final ChurchTodayFailure failure;

  @override
  String toString() {
    return 'ChurchTodayState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(List<ChurchToday> churchTodayRecords)
        loadedSuccessfully,
    required TResult Function(ChurchTodayFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChurchToday> churchTodayRecords)? loadedSuccessfully,
    TResult Function(ChurchTodayFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements ChurchTodayState {
  const factory LoadedUnsuccessfully(ChurchTodayFailure failure) =
      _$LoadedUnsuccessfully;

  ChurchTodayFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
