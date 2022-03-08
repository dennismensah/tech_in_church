// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'podcast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PodcastEventTearOff {
  const _$PodcastEventTearOff();

  PodcastFetched podcastFetched() {
    return const PodcastFetched();
  }
}

/// @nodoc
const $PodcastEvent = _$PodcastEventTearOff();

/// @nodoc
mixin _$PodcastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() podcastFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? podcastFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastFetched value) podcastFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastFetched value)? podcastFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastEventCopyWith<$Res> {
  factory $PodcastEventCopyWith(
          PodcastEvent value, $Res Function(PodcastEvent) then) =
      _$PodcastEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastEventCopyWithImpl<$Res> implements $PodcastEventCopyWith<$Res> {
  _$PodcastEventCopyWithImpl(this._value, this._then);

  final PodcastEvent _value;
  // ignore: unused_field
  final $Res Function(PodcastEvent) _then;
}

/// @nodoc
abstract class $PodcastFetchedCopyWith<$Res> {
  factory $PodcastFetchedCopyWith(
          PodcastFetched value, $Res Function(PodcastFetched) then) =
      _$PodcastFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastFetchedCopyWithImpl<$Res>
    extends _$PodcastEventCopyWithImpl<$Res>
    implements $PodcastFetchedCopyWith<$Res> {
  _$PodcastFetchedCopyWithImpl(
      PodcastFetched _value, $Res Function(PodcastFetched) _then)
      : super(_value, (v) => _then(v as PodcastFetched));

  @override
  PodcastFetched get _value => super._value as PodcastFetched;
}

/// @nodoc
class _$PodcastFetched implements PodcastFetched {
  const _$PodcastFetched();

  @override
  String toString() {
    return 'PodcastEvent.podcastFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PodcastFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() podcastFetched,
  }) {
    return podcastFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? podcastFetched,
    required TResult orElse(),
  }) {
    if (podcastFetched != null) {
      return podcastFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastFetched value) podcastFetched,
  }) {
    return podcastFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastFetched value)? podcastFetched,
    required TResult orElse(),
  }) {
    if (podcastFetched != null) {
      return podcastFetched(this);
    }
    return orElse();
  }
}

abstract class PodcastFetched implements PodcastEvent {
  const factory PodcastFetched() = _$PodcastFetched;
}

/// @nodoc
class _$PodcastStateTearOff {
  const _$PodcastStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(
      List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts) {
    return LoadedSuccessfully(
      podcasts,
      bookmarkedPodcasts,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(PodcastFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $PodcastState = _$PodcastStateTearOff();

/// @nodoc
mixin _$PodcastState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)
        loadedSuccessfully,
    required TResult Function(PodcastFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)?
        loadedSuccessfully,
    TResult Function(PodcastFailure failure)? loadedUnSuccessfully,
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
abstract class $PodcastStateCopyWith<$Res> {
  factory $PodcastStateCopyWith(
          PodcastState value, $Res Function(PodcastState) then) =
      _$PodcastStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastStateCopyWithImpl<$Res> implements $PodcastStateCopyWith<$Res> {
  _$PodcastStateCopyWithImpl(this._value, this._then);

  final PodcastState _value;
  // ignore: unused_field
  final $Res Function(PodcastState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PodcastStateCopyWithImpl<$Res>
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
    return 'PodcastState.initial()';
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
    required TResult Function(
            List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)
        loadedSuccessfully,
    required TResult Function(PodcastFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)?
        loadedSuccessfully,
    TResult Function(PodcastFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements PodcastState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PodcastStateCopyWithImpl<$Res>
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
    return 'PodcastState.loading()';
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
    required TResult Function(
            List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)
        loadedSuccessfully,
    required TResult Function(PodcastFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)?
        loadedSuccessfully,
    TResult Function(PodcastFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements PodcastState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$PodcastStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? podcasts = freezed,
    Object? bookmarkedPodcasts = freezed,
  }) {
    return _then(LoadedSuccessfully(
      podcasts == freezed
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as List<Podcast>,
      bookmarkedPodcasts == freezed
          ? _value.bookmarkedPodcasts
          : bookmarkedPodcasts // ignore: cast_nullable_to_non_nullable
              as List<Podcast>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.podcasts, this.bookmarkedPodcasts);

  @override
  final List<Podcast> podcasts;
  @override
  final List<Podcast> bookmarkedPodcasts;

  @override
  String toString() {
    return 'PodcastState.loadedSuccessfully(podcasts: $podcasts, bookmarkedPodcasts: $bookmarkedPodcasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.podcasts, podcasts) ||
                const DeepCollectionEquality()
                    .equals(other.podcasts, podcasts)) &&
            (identical(other.bookmarkedPodcasts, bookmarkedPodcasts) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarkedPodcasts, bookmarkedPodcasts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(podcasts) ^
      const DeepCollectionEquality().hash(bookmarkedPodcasts);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)
        loadedSuccessfully,
    required TResult Function(PodcastFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(podcasts, bookmarkedPodcasts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)?
        loadedSuccessfully,
    TResult Function(PodcastFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(podcasts, bookmarkedPodcasts);
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

abstract class LoadedSuccessfully implements PodcastState {
  const factory LoadedSuccessfully(
          List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts) =
      _$LoadedSuccessfully;

  List<Podcast> get podcasts => throw _privateConstructorUsedError;
  List<Podcast> get bookmarkedPodcasts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({PodcastFailure failure});

  $PodcastFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$PodcastStateCopyWithImpl<$Res>
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
              as PodcastFailure,
    ));
  }

  @override
  $PodcastFailureCopyWith<$Res> get failure {
    return $PodcastFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final PodcastFailure failure;

  @override
  String toString() {
    return 'PodcastState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(
            List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)
        loadedSuccessfully,
    required TResult Function(PodcastFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Podcast> podcasts, List<Podcast> bookmarkedPodcasts)?
        loadedSuccessfully,
    TResult Function(PodcastFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements PodcastState {
  const factory LoadedUnsuccessfully(PodcastFailure failure) =
      _$LoadedUnsuccessfully;

  PodcastFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
