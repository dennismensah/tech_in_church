// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'podcast_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PodcastActionsEventTearOff {
  const _$PodcastActionsEventTearOff();

  PodcastBookmarked podcastBookmarked(int podcastId) {
    return PodcastBookmarked(
      podcastId,
    );
  }

  PodcastDownloaded podcastDownloaded(String audioUrl, String audioFileName) {
    return PodcastDownloaded(
      audioUrl,
      audioFileName,
    );
  }
}

/// @nodoc
const $PodcastActionsEvent = _$PodcastActionsEventTearOff();

/// @nodoc
mixin _$PodcastActionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int podcastId) podcastBookmarked,
    required TResult Function(String audioUrl, String audioFileName)
        podcastDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int podcastId)? podcastBookmarked,
    TResult Function(String audioUrl, String audioFileName)? podcastDownloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastBookmarked value) podcastBookmarked,
    required TResult Function(PodcastDownloaded value) podcastDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastBookmarked value)? podcastBookmarked,
    TResult Function(PodcastDownloaded value)? podcastDownloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastActionsEventCopyWith<$Res> {
  factory $PodcastActionsEventCopyWith(
          PodcastActionsEvent value, $Res Function(PodcastActionsEvent) then) =
      _$PodcastActionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastActionsEventCopyWithImpl<$Res>
    implements $PodcastActionsEventCopyWith<$Res> {
  _$PodcastActionsEventCopyWithImpl(this._value, this._then);

  final PodcastActionsEvent _value;
  // ignore: unused_field
  final $Res Function(PodcastActionsEvent) _then;
}

/// @nodoc
abstract class $PodcastBookmarkedCopyWith<$Res> {
  factory $PodcastBookmarkedCopyWith(
          PodcastBookmarked value, $Res Function(PodcastBookmarked) then) =
      _$PodcastBookmarkedCopyWithImpl<$Res>;
  $Res call({int podcastId});
}

/// @nodoc
class _$PodcastBookmarkedCopyWithImpl<$Res>
    extends _$PodcastActionsEventCopyWithImpl<$Res>
    implements $PodcastBookmarkedCopyWith<$Res> {
  _$PodcastBookmarkedCopyWithImpl(
      PodcastBookmarked _value, $Res Function(PodcastBookmarked) _then)
      : super(_value, (v) => _then(v as PodcastBookmarked));

  @override
  PodcastBookmarked get _value => super._value as PodcastBookmarked;

  @override
  $Res call({
    Object? podcastId = freezed,
  }) {
    return _then(PodcastBookmarked(
      podcastId == freezed
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$PodcastBookmarked implements PodcastBookmarked {
  const _$PodcastBookmarked(this.podcastId);

  @override
  final int podcastId;

  @override
  String toString() {
    return 'PodcastActionsEvent.podcastBookmarked(podcastId: $podcastId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PodcastBookmarked &&
            (identical(other.podcastId, podcastId) ||
                const DeepCollectionEquality()
                    .equals(other.podcastId, podcastId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(podcastId);

  @JsonKey(ignore: true)
  @override
  $PodcastBookmarkedCopyWith<PodcastBookmarked> get copyWith =>
      _$PodcastBookmarkedCopyWithImpl<PodcastBookmarked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int podcastId) podcastBookmarked,
    required TResult Function(String audioUrl, String audioFileName)
        podcastDownloaded,
  }) {
    return podcastBookmarked(podcastId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int podcastId)? podcastBookmarked,
    TResult Function(String audioUrl, String audioFileName)? podcastDownloaded,
    required TResult orElse(),
  }) {
    if (podcastBookmarked != null) {
      return podcastBookmarked(podcastId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastBookmarked value) podcastBookmarked,
    required TResult Function(PodcastDownloaded value) podcastDownloaded,
  }) {
    return podcastBookmarked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastBookmarked value)? podcastBookmarked,
    TResult Function(PodcastDownloaded value)? podcastDownloaded,
    required TResult orElse(),
  }) {
    if (podcastBookmarked != null) {
      return podcastBookmarked(this);
    }
    return orElse();
  }
}

abstract class PodcastBookmarked implements PodcastActionsEvent {
  const factory PodcastBookmarked(int podcastId) = _$PodcastBookmarked;

  int get podcastId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastBookmarkedCopyWith<PodcastBookmarked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastDownloadedCopyWith<$Res> {
  factory $PodcastDownloadedCopyWith(
          PodcastDownloaded value, $Res Function(PodcastDownloaded) then) =
      _$PodcastDownloadedCopyWithImpl<$Res>;
  $Res call({String audioUrl, String audioFileName});
}

/// @nodoc
class _$PodcastDownloadedCopyWithImpl<$Res>
    extends _$PodcastActionsEventCopyWithImpl<$Res>
    implements $PodcastDownloadedCopyWith<$Res> {
  _$PodcastDownloadedCopyWithImpl(
      PodcastDownloaded _value, $Res Function(PodcastDownloaded) _then)
      : super(_value, (v) => _then(v as PodcastDownloaded));

  @override
  PodcastDownloaded get _value => super._value as PodcastDownloaded;

  @override
  $Res call({
    Object? audioUrl = freezed,
    Object? audioFileName = freezed,
  }) {
    return _then(PodcastDownloaded(
      audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioFileName == freezed
          ? _value.audioFileName
          : audioFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PodcastDownloaded implements PodcastDownloaded {
  const _$PodcastDownloaded(this.audioUrl, this.audioFileName);

  @override
  final String audioUrl;
  @override
  final String audioFileName;

  @override
  String toString() {
    return 'PodcastActionsEvent.podcastDownloaded(audioUrl: $audioUrl, audioFileName: $audioFileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PodcastDownloaded &&
            (identical(other.audioUrl, audioUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioUrl, audioUrl)) &&
            (identical(other.audioFileName, audioFileName) ||
                const DeepCollectionEquality()
                    .equals(other.audioFileName, audioFileName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(audioUrl) ^
      const DeepCollectionEquality().hash(audioFileName);

  @JsonKey(ignore: true)
  @override
  $PodcastDownloadedCopyWith<PodcastDownloaded> get copyWith =>
      _$PodcastDownloadedCopyWithImpl<PodcastDownloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int podcastId) podcastBookmarked,
    required TResult Function(String audioUrl, String audioFileName)
        podcastDownloaded,
  }) {
    return podcastDownloaded(audioUrl, audioFileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int podcastId)? podcastBookmarked,
    TResult Function(String audioUrl, String audioFileName)? podcastDownloaded,
    required TResult orElse(),
  }) {
    if (podcastDownloaded != null) {
      return podcastDownloaded(audioUrl, audioFileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastBookmarked value) podcastBookmarked,
    required TResult Function(PodcastDownloaded value) podcastDownloaded,
  }) {
    return podcastDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastBookmarked value)? podcastBookmarked,
    TResult Function(PodcastDownloaded value)? podcastDownloaded,
    required TResult orElse(),
  }) {
    if (podcastDownloaded != null) {
      return podcastDownloaded(this);
    }
    return orElse();
  }
}

abstract class PodcastDownloaded implements PodcastActionsEvent {
  const factory PodcastDownloaded(String audioUrl, String audioFileName) =
      _$PodcastDownloaded;

  String get audioUrl => throw _privateConstructorUsedError;
  String get audioFileName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastDownloadedCopyWith<PodcastDownloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PodcastActionsStateTearOff {
  const _$PodcastActionsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  Loading loading() {
    return const Loading();
  }

  PodcastBookmarkedSuccessfully podcastBookmarkedSuccessfully() {
    return const PodcastBookmarkedSuccessfully();
  }

  PodcastBookmarkedUnsuccessfully podcastBookmarkedUnsuccessfully(
      PodcastFailure podcastFailure) {
    return PodcastBookmarkedUnsuccessfully(
      podcastFailure,
    );
  }

  DownloadedSuccessfully downloadedSuccessfully() {
    return const DownloadedSuccessfully();
  }

  DownloadFailed downloadFailed(PodcastFailure podcastFailure) {
    return DownloadFailed(
      podcastFailure,
    );
  }
}

/// @nodoc
const $PodcastActionsState = _$PodcastActionsStateTearOff();

/// @nodoc
mixin _$PodcastActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastActionsStateCopyWith<$Res> {
  factory $PodcastActionsStateCopyWith(
          PodcastActionsState value, $Res Function(PodcastActionsState) then) =
      _$PodcastActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastActionsStateCopyWithImpl<$Res>
    implements $PodcastActionsStateCopyWith<$Res> {
  _$PodcastActionsStateCopyWithImpl(this._value, this._then);

  final PodcastActionsState _value;
  // ignore: unused_field
  final $Res Function(PodcastActionsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
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
    return 'PodcastActionsState.initial()';
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
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
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
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PodcastActionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
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
    return 'PodcastActionsState.loading()';
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
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
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
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PodcastActionsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $PodcastBookmarkedSuccessfullyCopyWith<$Res> {
  factory $PodcastBookmarkedSuccessfullyCopyWith(
          PodcastBookmarkedSuccessfully value,
          $Res Function(PodcastBookmarkedSuccessfully) then) =
      _$PodcastBookmarkedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$PodcastBookmarkedSuccessfullyCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
    implements $PodcastBookmarkedSuccessfullyCopyWith<$Res> {
  _$PodcastBookmarkedSuccessfullyCopyWithImpl(
      PodcastBookmarkedSuccessfully _value,
      $Res Function(PodcastBookmarkedSuccessfully) _then)
      : super(_value, (v) => _then(v as PodcastBookmarkedSuccessfully));

  @override
  PodcastBookmarkedSuccessfully get _value =>
      super._value as PodcastBookmarkedSuccessfully;
}

/// @nodoc
class _$PodcastBookmarkedSuccessfully implements PodcastBookmarkedSuccessfully {
  const _$PodcastBookmarkedSuccessfully();

  @override
  String toString() {
    return 'PodcastActionsState.podcastBookmarkedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PodcastBookmarkedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return podcastBookmarkedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (podcastBookmarkedSuccessfully != null) {
      return podcastBookmarkedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return podcastBookmarkedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (podcastBookmarkedSuccessfully != null) {
      return podcastBookmarkedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class PodcastBookmarkedSuccessfully implements PodcastActionsState {
  const factory PodcastBookmarkedSuccessfully() =
      _$PodcastBookmarkedSuccessfully;
}

/// @nodoc
abstract class $PodcastBookmarkedUnsuccessfullyCopyWith<$Res> {
  factory $PodcastBookmarkedUnsuccessfullyCopyWith(
          PodcastBookmarkedUnsuccessfully value,
          $Res Function(PodcastBookmarkedUnsuccessfully) then) =
      _$PodcastBookmarkedUnsuccessfullyCopyWithImpl<$Res>;
  $Res call({PodcastFailure podcastFailure});

  $PodcastFailureCopyWith<$Res> get podcastFailure;
}

/// @nodoc
class _$PodcastBookmarkedUnsuccessfullyCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
    implements $PodcastBookmarkedUnsuccessfullyCopyWith<$Res> {
  _$PodcastBookmarkedUnsuccessfullyCopyWithImpl(
      PodcastBookmarkedUnsuccessfully _value,
      $Res Function(PodcastBookmarkedUnsuccessfully) _then)
      : super(_value, (v) => _then(v as PodcastBookmarkedUnsuccessfully));

  @override
  PodcastBookmarkedUnsuccessfully get _value =>
      super._value as PodcastBookmarkedUnsuccessfully;

  @override
  $Res call({
    Object? podcastFailure = freezed,
  }) {
    return _then(PodcastBookmarkedUnsuccessfully(
      podcastFailure == freezed
          ? _value.podcastFailure
          : podcastFailure // ignore: cast_nullable_to_non_nullable
              as PodcastFailure,
    ));
  }

  @override
  $PodcastFailureCopyWith<$Res> get podcastFailure {
    return $PodcastFailureCopyWith<$Res>(_value.podcastFailure, (value) {
      return _then(_value.copyWith(podcastFailure: value));
    });
  }
}

/// @nodoc
class _$PodcastBookmarkedUnsuccessfully
    implements PodcastBookmarkedUnsuccessfully {
  const _$PodcastBookmarkedUnsuccessfully(this.podcastFailure);

  @override
  final PodcastFailure podcastFailure;

  @override
  String toString() {
    return 'PodcastActionsState.podcastBookmarkedUnsuccessfully(podcastFailure: $podcastFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PodcastBookmarkedUnsuccessfully &&
            (identical(other.podcastFailure, podcastFailure) ||
                const DeepCollectionEquality()
                    .equals(other.podcastFailure, podcastFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(podcastFailure);

  @JsonKey(ignore: true)
  @override
  $PodcastBookmarkedUnsuccessfullyCopyWith<PodcastBookmarkedUnsuccessfully>
      get copyWith => _$PodcastBookmarkedUnsuccessfullyCopyWithImpl<
          PodcastBookmarkedUnsuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return podcastBookmarkedUnsuccessfully(podcastFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (podcastBookmarkedUnsuccessfully != null) {
      return podcastBookmarkedUnsuccessfully(podcastFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return podcastBookmarkedUnsuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (podcastBookmarkedUnsuccessfully != null) {
      return podcastBookmarkedUnsuccessfully(this);
    }
    return orElse();
  }
}

abstract class PodcastBookmarkedUnsuccessfully implements PodcastActionsState {
  const factory PodcastBookmarkedUnsuccessfully(PodcastFailure podcastFailure) =
      _$PodcastBookmarkedUnsuccessfully;

  PodcastFailure get podcastFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastBookmarkedUnsuccessfullyCopyWith<PodcastBookmarkedUnsuccessfully>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadedSuccessfullyCopyWith<$Res> {
  factory $DownloadedSuccessfullyCopyWith(DownloadedSuccessfully value,
          $Res Function(DownloadedSuccessfully) then) =
      _$DownloadedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadedSuccessfullyCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
    implements $DownloadedSuccessfullyCopyWith<$Res> {
  _$DownloadedSuccessfullyCopyWithImpl(DownloadedSuccessfully _value,
      $Res Function(DownloadedSuccessfully) _then)
      : super(_value, (v) => _then(v as DownloadedSuccessfully));

  @override
  DownloadedSuccessfully get _value => super._value as DownloadedSuccessfully;
}

/// @nodoc
class _$DownloadedSuccessfully implements DownloadedSuccessfully {
  const _$DownloadedSuccessfully();

  @override
  String toString() {
    return 'PodcastActionsState.downloadedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DownloadedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return downloadedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadedSuccessfully != null) {
      return downloadedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return downloadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadedSuccessfully != null) {
      return downloadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class DownloadedSuccessfully implements PodcastActionsState {
  const factory DownloadedSuccessfully() = _$DownloadedSuccessfully;
}

/// @nodoc
abstract class $DownloadFailedCopyWith<$Res> {
  factory $DownloadFailedCopyWith(
          DownloadFailed value, $Res Function(DownloadFailed) then) =
      _$DownloadFailedCopyWithImpl<$Res>;
  $Res call({PodcastFailure podcastFailure});

  $PodcastFailureCopyWith<$Res> get podcastFailure;
}

/// @nodoc
class _$DownloadFailedCopyWithImpl<$Res>
    extends _$PodcastActionsStateCopyWithImpl<$Res>
    implements $DownloadFailedCopyWith<$Res> {
  _$DownloadFailedCopyWithImpl(
      DownloadFailed _value, $Res Function(DownloadFailed) _then)
      : super(_value, (v) => _then(v as DownloadFailed));

  @override
  DownloadFailed get _value => super._value as DownloadFailed;

  @override
  $Res call({
    Object? podcastFailure = freezed,
  }) {
    return _then(DownloadFailed(
      podcastFailure == freezed
          ? _value.podcastFailure
          : podcastFailure // ignore: cast_nullable_to_non_nullable
              as PodcastFailure,
    ));
  }

  @override
  $PodcastFailureCopyWith<$Res> get podcastFailure {
    return $PodcastFailureCopyWith<$Res>(_value.podcastFailure, (value) {
      return _then(_value.copyWith(podcastFailure: value));
    });
  }
}

/// @nodoc
class _$DownloadFailed implements DownloadFailed {
  const _$DownloadFailed(this.podcastFailure);

  @override
  final PodcastFailure podcastFailure;

  @override
  String toString() {
    return 'PodcastActionsState.downloadFailed(podcastFailure: $podcastFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DownloadFailed &&
            (identical(other.podcastFailure, podcastFailure) ||
                const DeepCollectionEquality()
                    .equals(other.podcastFailure, podcastFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(podcastFailure);

  @JsonKey(ignore: true)
  @override
  $DownloadFailedCopyWith<DownloadFailed> get copyWith =>
      _$DownloadFailedCopyWithImpl<DownloadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() podcastBookmarkedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure)
        podcastBookmarkedUnsuccessfully,
    required TResult Function() downloadedSuccessfully,
    required TResult Function(PodcastFailure podcastFailure) downloadFailed,
  }) {
    return downloadFailed(podcastFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? podcastBookmarkedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)?
        podcastBookmarkedUnsuccessfully,
    TResult Function()? downloadedSuccessfully,
    TResult Function(PodcastFailure podcastFailure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(podcastFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PodcastBookmarkedSuccessfully value)
        podcastBookmarkedSuccessfully,
    required TResult Function(PodcastBookmarkedUnsuccessfully value)
        podcastBookmarkedUnsuccessfully,
    required TResult Function(DownloadedSuccessfully value)
        downloadedSuccessfully,
    required TResult Function(DownloadFailed value) downloadFailed,
  }) {
    return downloadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PodcastBookmarkedSuccessfully value)?
        podcastBookmarkedSuccessfully,
    TResult Function(PodcastBookmarkedUnsuccessfully value)?
        podcastBookmarkedUnsuccessfully,
    TResult Function(DownloadedSuccessfully value)? downloadedSuccessfully,
    TResult Function(DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(this);
    }
    return orElse();
  }
}

abstract class DownloadFailed implements PodcastActionsState {
  const factory DownloadFailed(PodcastFailure podcastFailure) =
      _$DownloadFailed;

  PodcastFailure get podcastFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadFailedCopyWith<DownloadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
