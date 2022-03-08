// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GalleryEventTearOff {
  const _$GalleryEventTearOff();

  GalleryFetched galleryFetched() {
    return const GalleryFetched();
  }
}

/// @nodoc
const $GalleryEvent = _$GalleryEventTearOff();

/// @nodoc
mixin _$GalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() galleryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? galleryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFetched value) galleryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? galleryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryEventCopyWith<$Res> {
  factory $GalleryEventCopyWith(
          GalleryEvent value, $Res Function(GalleryEvent) then) =
      _$GalleryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GalleryEventCopyWithImpl<$Res> implements $GalleryEventCopyWith<$Res> {
  _$GalleryEventCopyWithImpl(this._value, this._then);

  final GalleryEvent _value;
  // ignore: unused_field
  final $Res Function(GalleryEvent) _then;
}

/// @nodoc
abstract class $GalleryFetchedCopyWith<$Res> {
  factory $GalleryFetchedCopyWith(
          GalleryFetched value, $Res Function(GalleryFetched) then) =
      _$GalleryFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GalleryFetchedCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res>
    implements $GalleryFetchedCopyWith<$Res> {
  _$GalleryFetchedCopyWithImpl(
      GalleryFetched _value, $Res Function(GalleryFetched) _then)
      : super(_value, (v) => _then(v as GalleryFetched));

  @override
  GalleryFetched get _value => super._value as GalleryFetched;
}

/// @nodoc
class _$GalleryFetched implements GalleryFetched {
  const _$GalleryFetched();

  @override
  String toString() {
    return 'GalleryEvent.galleryFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GalleryFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() galleryFetched,
  }) {
    return galleryFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? galleryFetched,
    required TResult orElse(),
  }) {
    if (galleryFetched != null) {
      return galleryFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFetched value) galleryFetched,
  }) {
    return galleryFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? galleryFetched,
    required TResult orElse(),
  }) {
    if (galleryFetched != null) {
      return galleryFetched(this);
    }
    return orElse();
  }
}

abstract class GalleryFetched implements GalleryEvent {
  const factory GalleryFetched() = _$GalleryFetched;
}

/// @nodoc
class _$GalleryStateTearOff {
  const _$GalleryStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<Gallery> galleries) {
    return LoadedSuccessfully(
      galleries,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(GalleryFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $GalleryState = _$GalleryStateTearOff();

/// @nodoc
mixin _$GalleryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Gallery> galleries) loadedSuccessfully,
    required TResult Function(GalleryFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Gallery> galleries)? loadedSuccessfully,
    TResult Function(GalleryFailure failure)? loadedUnSuccessfully,
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
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res> implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  final GalleryState _value;
  // ignore: unused_field
  final $Res Function(GalleryState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$GalleryStateCopyWithImpl<$Res>
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
    return 'GalleryState.initial()';
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
    required TResult Function(List<Gallery> galleries) loadedSuccessfully,
    required TResult Function(GalleryFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Gallery> galleries)? loadedSuccessfully,
    TResult Function(GalleryFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements GalleryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GalleryStateCopyWithImpl<$Res>
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
    return 'GalleryState.loading()';
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
    required TResult Function(List<Gallery> galleries) loadedSuccessfully,
    required TResult Function(GalleryFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Gallery> galleries)? loadedSuccessfully,
    TResult Function(GalleryFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements GalleryState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<Gallery> galleries});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? galleries = freezed,
  }) {
    return _then(LoadedSuccessfully(
      galleries == freezed
          ? _value.galleries
          : galleries // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.galleries);

  @override
  final List<Gallery> galleries;

  @override
  String toString() {
    return 'GalleryState.loadedSuccessfully(galleries: $galleries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.galleries, galleries) ||
                const DeepCollectionEquality()
                    .equals(other.galleries, galleries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(galleries);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Gallery> galleries) loadedSuccessfully,
    required TResult Function(GalleryFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(galleries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Gallery> galleries)? loadedSuccessfully,
    TResult Function(GalleryFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(galleries);
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

abstract class LoadedSuccessfully implements GalleryState {
  const factory LoadedSuccessfully(List<Gallery> galleries) =
      _$LoadedSuccessfully;

  List<Gallery> get galleries => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({GalleryFailure failure});

  $GalleryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res>
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
              as GalleryFailure,
    ));
  }

  @override
  $GalleryFailureCopyWith<$Res> get failure {
    return $GalleryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final GalleryFailure failure;

  @override
  String toString() {
    return 'GalleryState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(List<Gallery> galleries) loadedSuccessfully,
    required TResult Function(GalleryFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Gallery> galleries)? loadedSuccessfully,
    TResult Function(GalleryFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements GalleryState {
  const factory LoadedUnsuccessfully(GalleryFailure failure) =
      _$LoadedUnsuccessfully;

  GalleryFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
