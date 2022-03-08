// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeItemsFetched homeItemsFetched() {
    return const HomeItemsFetched();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeItemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeItemsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeItemsFetched value) homeItemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeItemsFetched value)? homeItemsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomeItemsFetchedCopyWith<$Res> {
  factory $HomeItemsFetchedCopyWith(
          HomeItemsFetched value, $Res Function(HomeItemsFetched) then) =
      _$HomeItemsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeItemsFetchedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeItemsFetchedCopyWith<$Res> {
  _$HomeItemsFetchedCopyWithImpl(
      HomeItemsFetched _value, $Res Function(HomeItemsFetched) _then)
      : super(_value, (v) => _then(v as HomeItemsFetched));

  @override
  HomeItemsFetched get _value => super._value as HomeItemsFetched;
}

/// @nodoc
class _$HomeItemsFetched implements HomeItemsFetched {
  const _$HomeItemsFetched();

  @override
  String toString() {
    return 'HomeEvent.homeItemsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeItemsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeItemsFetched,
  }) {
    return homeItemsFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeItemsFetched,
    required TResult orElse(),
  }) {
    if (homeItemsFetched != null) {
      return homeItemsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeItemsFetched value) homeItemsFetched,
  }) {
    return homeItemsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeItemsFetched value)? homeItemsFetched,
    required TResult orElse(),
  }) {
    if (homeItemsFetched != null) {
      return homeItemsFetched(this);
    }
    return orElse();
  }
}

abstract class HomeItemsFetched implements HomeEvent {
  const factory HomeItemsFetched() = _$HomeItemsFetched;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(Home homeItems) {
    return LoadedSuccessfully(
      homeItems,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(HomeFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Home homeItems) loadedSuccessfully,
    required TResult Function(HomeFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Home homeItems)? loadedSuccessfully,
    TResult Function(HomeFailure failure)? loadedUnSuccessfully,
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
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.initial()';
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
    required TResult Function(Home homeItems) loadedSuccessfully,
    required TResult Function(HomeFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Home homeItems)? loadedSuccessfully,
    TResult Function(HomeFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements HomeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.loading()';
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
    required TResult Function(Home homeItems) loadedSuccessfully,
    required TResult Function(HomeFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Home homeItems)? loadedSuccessfully,
    TResult Function(HomeFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements HomeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({Home homeItems});

  $HomeCopyWith<$Res> get homeItems;
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? homeItems = freezed,
  }) {
    return _then(LoadedSuccessfully(
      homeItems == freezed
          ? _value.homeItems
          : homeItems // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }

  @override
  $HomeCopyWith<$Res> get homeItems {
    return $HomeCopyWith<$Res>(_value.homeItems, (value) {
      return _then(_value.copyWith(homeItems: value));
    });
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.homeItems);

  @override
  final Home homeItems;

  @override
  String toString() {
    return 'HomeState.loadedSuccessfully(homeItems: $homeItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.homeItems, homeItems) ||
                const DeepCollectionEquality()
                    .equals(other.homeItems, homeItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeItems);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Home homeItems) loadedSuccessfully,
    required TResult Function(HomeFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(homeItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Home homeItems)? loadedSuccessfully,
    TResult Function(HomeFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(homeItems);
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

abstract class LoadedSuccessfully implements HomeState {
  const factory LoadedSuccessfully(Home homeItems) = _$LoadedSuccessfully;

  Home get homeItems => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({HomeFailure failure});

  $HomeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
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
              as HomeFailure,
    ));
  }

  @override
  $HomeFailureCopyWith<$Res> get failure {
    return $HomeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final HomeFailure failure;

  @override
  String toString() {
    return 'HomeState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(Home homeItems) loadedSuccessfully,
    required TResult Function(HomeFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Home homeItems)? loadedSuccessfully,
    TResult Function(HomeFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements HomeState {
  const factory LoadedUnsuccessfully(HomeFailure failure) =
      _$LoadedUnsuccessfully;

  HomeFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
