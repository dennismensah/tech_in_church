// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bible_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BibleChapter _$BibleChapterFromJson(Map<String, dynamic> json) {
  return _BibleChapter.fromJson(json);
}

/// @nodoc
class _$BibleChapterTearOff {
  const _$BibleChapterTearOff();

  _BibleChapter call({@HiveField(15) required List<BibleVerse> verses}) {
    return _BibleChapter(
      verses: verses,
    );
  }

  BibleChapter fromJson(Map<String, Object> json) {
    return BibleChapter.fromJson(json);
  }
}

/// @nodoc
const $BibleChapter = _$BibleChapterTearOff();

/// @nodoc
mixin _$BibleChapter {
  @HiveField(15)
  List<BibleVerse> get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BibleChapterCopyWith<BibleChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleChapterCopyWith<$Res> {
  factory $BibleChapterCopyWith(
          BibleChapter value, $Res Function(BibleChapter) then) =
      _$BibleChapterCopyWithImpl<$Res>;
  $Res call({@HiveField(15) List<BibleVerse> verses});
}

/// @nodoc
class _$BibleChapterCopyWithImpl<$Res> implements $BibleChapterCopyWith<$Res> {
  _$BibleChapterCopyWithImpl(this._value, this._then);

  final BibleChapter _value;
  // ignore: unused_field
  final $Res Function(BibleChapter) _then;

  @override
  $Res call({
    Object? verses = freezed,
  }) {
    return _then(_value.copyWith(
      verses: verses == freezed
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<BibleVerse>,
    ));
  }
}

/// @nodoc
abstract class _$BibleChapterCopyWith<$Res>
    implements $BibleChapterCopyWith<$Res> {
  factory _$BibleChapterCopyWith(
          _BibleChapter value, $Res Function(_BibleChapter) then) =
      __$BibleChapterCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(15) List<BibleVerse> verses});
}

/// @nodoc
class __$BibleChapterCopyWithImpl<$Res> extends _$BibleChapterCopyWithImpl<$Res>
    implements _$BibleChapterCopyWith<$Res> {
  __$BibleChapterCopyWithImpl(
      _BibleChapter _value, $Res Function(_BibleChapter) _then)
      : super(_value, (v) => _then(v as _BibleChapter));

  @override
  _BibleChapter get _value => super._value as _BibleChapter;

  @override
  $Res call({
    Object? verses = freezed,
  }) {
    return _then(_BibleChapter(
      verses: verses == freezed
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<BibleVerse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BibleChapter implements _BibleChapter {
  const _$_BibleChapter({@HiveField(15) required this.verses});

  factory _$_BibleChapter.fromJson(Map<String, dynamic> json) =>
      _$_$_BibleChapterFromJson(json);

  @override
  @HiveField(15)
  final List<BibleVerse> verses;

  @override
  String toString() {
    return 'BibleChapter(verses: $verses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BibleChapter &&
            (identical(other.verses, verses) ||
                const DeepCollectionEquality().equals(other.verses, verses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(verses);

  @JsonKey(ignore: true)
  @override
  _$BibleChapterCopyWith<_BibleChapter> get copyWith =>
      __$BibleChapterCopyWithImpl<_BibleChapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BibleChapterToJson(this);
  }
}

abstract class _BibleChapter implements BibleChapter {
  const factory _BibleChapter(
      {@HiveField(15) required List<BibleVerse> verses}) = _$_BibleChapter;

  factory _BibleChapter.fromJson(Map<String, dynamic> json) =
      _$_BibleChapter.fromJson;

  @override
  @HiveField(15)
  List<BibleVerse> get verses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BibleChapterCopyWith<_BibleChapter> get copyWith =>
      throw _privateConstructorUsedError;
}
