// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'youtube_links_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$YoutubeLinksEventTearOff {
  const _$YoutubeLinksEventTearOff();

  YoutubeLinksFetched youtubeLinksFetched() {
    return const YoutubeLinksFetched();
  }
}

/// @nodoc
const $YoutubeLinksEvent = _$YoutubeLinksEventTearOff();

/// @nodoc
mixin _$YoutubeLinksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() youtubeLinksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? youtubeLinksFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YoutubeLinksFetched value) youtubeLinksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YoutubeLinksFetched value)? youtubeLinksFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeLinksEventCopyWith<$Res> {
  factory $YoutubeLinksEventCopyWith(
          YoutubeLinksEvent value, $Res Function(YoutubeLinksEvent) then) =
      _$YoutubeLinksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$YoutubeLinksEventCopyWithImpl<$Res>
    implements $YoutubeLinksEventCopyWith<$Res> {
  _$YoutubeLinksEventCopyWithImpl(this._value, this._then);

  final YoutubeLinksEvent _value;
  // ignore: unused_field
  final $Res Function(YoutubeLinksEvent) _then;
}

/// @nodoc
abstract class $YoutubeLinksFetchedCopyWith<$Res> {
  factory $YoutubeLinksFetchedCopyWith(
          YoutubeLinksFetched value, $Res Function(YoutubeLinksFetched) then) =
      _$YoutubeLinksFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$YoutubeLinksFetchedCopyWithImpl<$Res>
    extends _$YoutubeLinksEventCopyWithImpl<$Res>
    implements $YoutubeLinksFetchedCopyWith<$Res> {
  _$YoutubeLinksFetchedCopyWithImpl(
      YoutubeLinksFetched _value, $Res Function(YoutubeLinksFetched) _then)
      : super(_value, (v) => _then(v as YoutubeLinksFetched));

  @override
  YoutubeLinksFetched get _value => super._value as YoutubeLinksFetched;
}

/// @nodoc
class _$YoutubeLinksFetched implements YoutubeLinksFetched {
  const _$YoutubeLinksFetched();

  @override
  String toString() {
    return 'YoutubeLinksEvent.youtubeLinksFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is YoutubeLinksFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() youtubeLinksFetched,
  }) {
    return youtubeLinksFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? youtubeLinksFetched,
    required TResult orElse(),
  }) {
    if (youtubeLinksFetched != null) {
      return youtubeLinksFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YoutubeLinksFetched value) youtubeLinksFetched,
  }) {
    return youtubeLinksFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YoutubeLinksFetched value)? youtubeLinksFetched,
    required TResult orElse(),
  }) {
    if (youtubeLinksFetched != null) {
      return youtubeLinksFetched(this);
    }
    return orElse();
  }
}

abstract class YoutubeLinksFetched implements YoutubeLinksEvent {
  const factory YoutubeLinksFetched() = _$YoutubeLinksFetched;
}

/// @nodoc
class _$YoutubeLinksStateTearOff {
  const _$YoutubeLinksStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<YoutubeLink> youtubeLinks) {
    return LoadedSuccessfully(
      youtubeLinks,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully(YoutubeLinkFailure failure) {
    return LoadedUnsuccessfully(
      failure,
    );
  }
}

/// @nodoc
const $YoutubeLinksState = _$YoutubeLinksStateTearOff();

/// @nodoc
mixin _$YoutubeLinksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<YoutubeLink> youtubeLinks)
        loadedSuccessfully,
    required TResult Function(YoutubeLinkFailure failure) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<YoutubeLink> youtubeLinks)? loadedSuccessfully,
    TResult Function(YoutubeLinkFailure failure)? loadedUnSuccessfully,
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
abstract class $YoutubeLinksStateCopyWith<$Res> {
  factory $YoutubeLinksStateCopyWith(
          YoutubeLinksState value, $Res Function(YoutubeLinksState) then) =
      _$YoutubeLinksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$YoutubeLinksStateCopyWithImpl<$Res>
    implements $YoutubeLinksStateCopyWith<$Res> {
  _$YoutubeLinksStateCopyWithImpl(this._value, this._then);

  final YoutubeLinksState _value;
  // ignore: unused_field
  final $Res Function(YoutubeLinksState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$YoutubeLinksStateCopyWithImpl<$Res>
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
    return 'YoutubeLinksState.initial()';
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
    required TResult Function(List<YoutubeLink> youtubeLinks)
        loadedSuccessfully,
    required TResult Function(YoutubeLinkFailure failure) loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<YoutubeLink> youtubeLinks)? loadedSuccessfully,
    TResult Function(YoutubeLinkFailure failure)? loadedUnSuccessfully,
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

abstract class Initial implements YoutubeLinksState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$YoutubeLinksStateCopyWithImpl<$Res>
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
    return 'YoutubeLinksState.loading()';
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
    required TResult Function(List<YoutubeLink> youtubeLinks)
        loadedSuccessfully,
    required TResult Function(YoutubeLinkFailure failure) loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<YoutubeLink> youtubeLinks)? loadedSuccessfully,
    TResult Function(YoutubeLinkFailure failure)? loadedUnSuccessfully,
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

abstract class Loading implements YoutubeLinksState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<YoutubeLink> youtubeLinks});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$YoutubeLinksStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? youtubeLinks = freezed,
  }) {
    return _then(LoadedSuccessfully(
      youtubeLinks == freezed
          ? _value.youtubeLinks
          : youtubeLinks // ignore: cast_nullable_to_non_nullable
              as List<YoutubeLink>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.youtubeLinks);

  @override
  final List<YoutubeLink> youtubeLinks;

  @override
  String toString() {
    return 'YoutubeLinksState.loadedSuccessfully(youtubeLinks: $youtubeLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.youtubeLinks, youtubeLinks) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeLinks, youtubeLinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(youtubeLinks);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<YoutubeLink> youtubeLinks)
        loadedSuccessfully,
    required TResult Function(YoutubeLinkFailure failure) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(youtubeLinks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<YoutubeLink> youtubeLinks)? loadedSuccessfully,
    TResult Function(YoutubeLinkFailure failure)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(youtubeLinks);
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

abstract class LoadedSuccessfully implements YoutubeLinksState {
  const factory LoadedSuccessfully(List<YoutubeLink> youtubeLinks) =
      _$LoadedSuccessfully;

  List<YoutubeLink> get youtubeLinks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({YoutubeLinkFailure failure});

  $YoutubeLinkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$YoutubeLinksStateCopyWithImpl<$Res>
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
              as YoutubeLinkFailure,
    ));
  }

  @override
  $YoutubeLinkFailureCopyWith<$Res> get failure {
    return $YoutubeLinkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully(this.failure);

  @override
  final YoutubeLinkFailure failure;

  @override
  String toString() {
    return 'YoutubeLinksState.loadedUnSuccessfully(failure: $failure)';
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
    required TResult Function(List<YoutubeLink> youtubeLinks)
        loadedSuccessfully,
    required TResult Function(YoutubeLinkFailure failure) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<YoutubeLink> youtubeLinks)? loadedSuccessfully,
    TResult Function(YoutubeLinkFailure failure)? loadedUnSuccessfully,
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

abstract class LoadedUnsuccessfully implements YoutubeLinksState {
  const factory LoadedUnsuccessfully(YoutubeLinkFailure failure) =
      _$LoadedUnsuccessfully;

  YoutubeLinkFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedUnsuccessfullyCopyWith<LoadedUnsuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}
