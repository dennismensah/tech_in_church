// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'podcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Podcast _$PodcastFromJson(Map<String, dynamic> json) {
  return _Podcast.fromJson(json);
}

/// @nodoc
class _$PodcastTearOff {
  const _$PodcastTearOff();

  _Podcast call(
      {required int id,
      required String title,
      required String audio,
      required String audio_filename,
      required String mask,
      required String created_at,
      required int bookmark}) {
    return _Podcast(
      id: id,
      title: title,
      audio: audio,
      audio_filename: audio_filename,
      mask: mask,
      created_at: created_at,
      bookmark: bookmark,
    );
  }

  Podcast fromJson(Map<String, Object> json) {
    return Podcast.fromJson(json);
  }
}

/// @nodoc
const $Podcast = _$PodcastTearOff();

/// @nodoc
mixin _$Podcast {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  String get audio_filename => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get bookmark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String audio,
      String audio_filename,
      String mask,
      String created_at,
      int bookmark});
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res> implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  final Podcast _value;
  // ignore: unused_field
  final $Res Function(Podcast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? audio = freezed,
    Object? audio_filename = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? bookmark = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audio_filename: audio_filename == freezed
          ? _value.audio_filename
          : audio_filename // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PodcastCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$PodcastCopyWith(_Podcast value, $Res Function(_Podcast) then) =
      __$PodcastCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String audio,
      String audio_filename,
      String mask,
      String created_at,
      int bookmark});
}

/// @nodoc
class __$PodcastCopyWithImpl<$Res> extends _$PodcastCopyWithImpl<$Res>
    implements _$PodcastCopyWith<$Res> {
  __$PodcastCopyWithImpl(_Podcast _value, $Res Function(_Podcast) _then)
      : super(_value, (v) => _then(v as _Podcast));

  @override
  _Podcast get _value => super._value as _Podcast;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? audio = freezed,
    Object? audio_filename = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? bookmark = freezed,
  }) {
    return _then(_Podcast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audio_filename: audio_filename == freezed
          ? _value.audio_filename
          : audio_filename // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Podcast implements _Podcast {
  const _$_Podcast(
      {required this.id,
      required this.title,
      required this.audio,
      required this.audio_filename,
      required this.mask,
      required this.created_at,
      required this.bookmark});

  factory _$_Podcast.fromJson(Map<String, dynamic> json) =>
      _$_$_PodcastFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String audio;
  @override
  final String audio_filename;
  @override
  final String mask;
  @override
  final String created_at;
  @override
  final int bookmark;

  @override
  String toString() {
    return 'Podcast(id: $id, title: $title, audio: $audio, audio_filename: $audio_filename, mask: $mask, created_at: $created_at, bookmark: $bookmark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Podcast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.audio, audio) ||
                const DeepCollectionEquality().equals(other.audio, audio)) &&
            (identical(other.audio_filename, audio_filename) ||
                const DeepCollectionEquality()
                    .equals(other.audio_filename, audio_filename)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.bookmark, bookmark) ||
                const DeepCollectionEquality()
                    .equals(other.bookmark, bookmark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(audio) ^
      const DeepCollectionEquality().hash(audio_filename) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(bookmark);

  @JsonKey(ignore: true)
  @override
  _$PodcastCopyWith<_Podcast> get copyWith =>
      __$PodcastCopyWithImpl<_Podcast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PodcastToJson(this);
  }
}

abstract class _Podcast implements Podcast {
  const factory _Podcast(
      {required int id,
      required String title,
      required String audio,
      required String audio_filename,
      required String mask,
      required String created_at,
      required int bookmark}) = _$_Podcast;

  factory _Podcast.fromJson(Map<String, dynamic> json) = _$_Podcast.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get audio => throw _privateConstructorUsedError;
  @override
  String get audio_filename => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  int get bookmark => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PodcastCopyWith<_Podcast> get copyWith =>
      throw _privateConstructorUsedError;
}
