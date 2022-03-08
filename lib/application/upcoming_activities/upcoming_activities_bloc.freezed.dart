// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upcoming_activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpcomingActivitiesEventTearOff {
  const _$UpcomingActivitiesEventTearOff();

  UpcomingActivitiesFetched upcomingActivitiesFetched() {
    return const UpcomingActivitiesFetched();
  }
}

/// @nodoc
const $UpcomingActivitiesEvent = _$UpcomingActivitiesEventTearOff();

/// @nodoc
mixin _$UpcomingActivitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upcomingActivitiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upcomingActivitiesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpcomingActivitiesFetched value)
        upcomingActivitiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpcomingActivitiesFetched value)?
        upcomingActivitiesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingActivitiesEventCopyWith<$Res> {
  factory $UpcomingActivitiesEventCopyWith(UpcomingActivitiesEvent value,
          $Res Function(UpcomingActivitiesEvent) then) =
      _$UpcomingActivitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingActivitiesEventCopyWithImpl<$Res>
    implements $UpcomingActivitiesEventCopyWith<$Res> {
  _$UpcomingActivitiesEventCopyWithImpl(this._value, this._then);

  final UpcomingActivitiesEvent _value;
  // ignore: unused_field
  final $Res Function(UpcomingActivitiesEvent) _then;
}

/// @nodoc
abstract class $UpcomingActivitiesFetchedCopyWith<$Res> {
  factory $UpcomingActivitiesFetchedCopyWith(UpcomingActivitiesFetched value,
          $Res Function(UpcomingActivitiesFetched) then) =
      _$UpcomingActivitiesFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingActivitiesFetchedCopyWithImpl<$Res>
    extends _$UpcomingActivitiesEventCopyWithImpl<$Res>
    implements $UpcomingActivitiesFetchedCopyWith<$Res> {
  _$UpcomingActivitiesFetchedCopyWithImpl(UpcomingActivitiesFetched _value,
      $Res Function(UpcomingActivitiesFetched) _then)
      : super(_value, (v) => _then(v as UpcomingActivitiesFetched));

  @override
  UpcomingActivitiesFetched get _value =>
      super._value as UpcomingActivitiesFetched;
}

/// @nodoc
class _$UpcomingActivitiesFetched implements UpcomingActivitiesFetched {
  const _$UpcomingActivitiesFetched();

  @override
  String toString() {
    return 'UpcomingActivitiesEvent.upcomingActivitiesFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpcomingActivitiesFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upcomingActivitiesFetched,
  }) {
    return upcomingActivitiesFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upcomingActivitiesFetched,
    required TResult orElse(),
  }) {
    if (upcomingActivitiesFetched != null) {
      return upcomingActivitiesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpcomingActivitiesFetched value)
        upcomingActivitiesFetched,
  }) {
    return upcomingActivitiesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpcomingActivitiesFetched value)?
        upcomingActivitiesFetched,
    required TResult orElse(),
  }) {
    if (upcomingActivitiesFetched != null) {
      return upcomingActivitiesFetched(this);
    }
    return orElse();
  }
}

abstract class UpcomingActivitiesFetched implements UpcomingActivitiesEvent {
  const factory UpcomingActivitiesFetched() = _$UpcomingActivitiesFetched;
}

/// @nodoc
class _$UpcomingActivitiesStateTearOff {
  const _$UpcomingActivitiesStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(
      List<UpcomingActivity> upcomingActivities) {
    return LoadedSuccessfully(
      upcomingActivities,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(UpcomingActivityFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $UpcomingActivitiesState = _$UpcomingActivitiesStateTearOff();

/// @nodoc
mixin _$UpcomingActivitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UpcomingActivity> upcomingActivities)
        loadedSuccessfully,
    required TResult Function(UpcomingActivityFailure failure)
        loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UpcomingActivity> upcomingActivities)?
        loadedSuccessfully,
    TResult Function(UpcomingActivityFailure failure)? loadedUnSuccessfully,
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
abstract class $UpcomingActivitiesStateCopyWith<$Res> {
  factory $UpcomingActivitiesStateCopyWith(UpcomingActivitiesState value,
          $Res Function(UpcomingActivitiesState) then) =
      _$UpcomingActivitiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingActivitiesStateCopyWithImpl<$Res>
    implements $UpcomingActivitiesStateCopyWith<$Res> {
  _$UpcomingActivitiesStateCopyWithImpl(this._value, this._then);

  final UpcomingActivitiesState _value;
  // ignore: unused_field
  final $Res Function(UpcomingActivitiesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$UpcomingActivitiesStateCopyWithImpl<$Res>
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
    return 'UpcomingActivitiesState.initial()';
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
    required TResult Function(List<UpcomingActivity> upcomingActivities)
        loadedSuccessfully,
    required TResult Function(UpcomingActivityFailure failure)
        loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UpcomingActivity> upcomingActivities)?
        loadedSuccessfully,
    TResult Function(UpcomingActivityFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements UpcomingActivitiesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$UpcomingActivitiesStateCopyWithImpl<$Res>
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
    return 'UpcomingActivitiesState.loading()';
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
    required TResult Function(List<UpcomingActivity> upcomingActivities)
        loadedSuccessfully,
    required TResult Function(UpcomingActivityFailure failure)
        loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UpcomingActivity> upcomingActivities)?
        loadedSuccessfully,
    TResult Function(UpcomingActivityFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements UpcomingActivitiesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<UpcomingActivity> upcomingActivities});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$UpcomingActivitiesStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? upcomingActivities = freezed,
  }) {
    return _then(LoadedSuccessfully(
      upcomingActivities == freezed
          ? _value.upcomingActivities
          : upcomingActivities // ignore: cast_nullable_to_non_nullable
              as List<UpcomingActivity>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.upcomingActivities);

  @override
  final List<UpcomingActivity> upcomingActivities;

  @override
  String toString() {
    return 'UpcomingActivitiesState.loadedSuccessfully(upcomingActivities: $upcomingActivities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.upcomingActivities, upcomingActivities) ||
                const DeepCollectionEquality()
                    .equals(other.upcomingActivities, upcomingActivities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(upcomingActivities);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UpcomingActivity> upcomingActivities)
        loadedSuccessfully,
    required TResult Function(UpcomingActivityFailure failure)
        loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(upcomingActivities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UpcomingActivity> upcomingActivities)?
        loadedSuccessfully,
    TResult Function(UpcomingActivityFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(upcomingActivities);
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

abstract class LoadedSuccessfully implements UpcomingActivitiesState {
  const factory LoadedSuccessfully(List<UpcomingActivity> upcomingActivities) =
      _$LoadedSuccessfully;

  List<UpcomingActivity> get upcomingActivities =>
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
  $Res call({UpcomingActivityFailure failure});

  $UpcomingActivityFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$UpcomingActivitiesStateCopyWithImpl<$Res>
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
              as UpcomingActivityFailure,
    ));
  }

  @override
  $UpcomingActivityFailureCopyWith<$Res> get failure {
    return $UpcomingActivityFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final UpcomingActivityFailure failure;

  @override
  String toString() {
    return 'UpcomingActivitiesState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(List<UpcomingActivity> upcomingActivities)
        loadedSuccessfully,
    required TResult Function(UpcomingActivityFailure failure)
        loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UpcomingActivity> upcomingActivities)?
        loadedSuccessfully,
    TResult Function(UpcomingActivityFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements UpcomingActivitiesState {
  const factory LoadedUnsuccessfully(UpcomingActivityFailure failure) =
      _$LoadedUnsuccessfully;

  UpcomingActivityFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
