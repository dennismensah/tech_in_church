// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bible_verse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BibleVerse _$BibleVerseFromJson(Map<String, dynamic> json) {
  return _BibleVerse.fromJson(json);
}

/// @nodoc
class _$BibleVerseTearOff {
  const _$BibleVerseTearOff();

  _BibleVerse call(
      {@HiveField(16) required String text,
      @HiveField(17) required int verse}) {
    return _BibleVerse(
      text: text,
      verse: verse,
    );
  }

  BibleVerse fromJson(Map<String, Object> json) {
    return BibleVerse.fromJson(json);
  }
}

/// @nodoc
const $BibleVerse = _$BibleVerseTearOff();

/// @nodoc
mixin _$BibleVerse {
  @HiveField(16)
  String get text => throw _privateConstructorUsedError;
  @HiveField(17)
  int get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BibleVerseCopyWith<BibleVerse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleVerseCopyWith<$Res> {
  factory $BibleVerseCopyWith(
          BibleVerse value, $Res Function(BibleVerse) then) =
      _$BibleVerseCopyWithImpl<$Res>;
  $Res call({@HiveField(16) String text, @HiveField(17) int verse});
}

/// @nodoc
class _$BibleVerseCopyWithImpl<$Res> implements $BibleVerseCopyWith<$Res> {
  _$BibleVerseCopyWithImpl(this._value, this._then);

  final BibleVerse _value;
  // ignore: unused_field
  final $Res Function(BibleVerse) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? verse = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      verse: verse == freezed
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BibleVerseCopyWith<$Res> implements $BibleVerseCopyWith<$Res> {
  factory _$BibleVerseCopyWith(
          _BibleVerse value, $Res Function(_BibleVerse) then) =
      __$BibleVerseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(16) String text, @HiveField(17) int verse});
}

/// @nodoc
class __$BibleVerseCopyWithImpl<$Res> extends _$BibleVerseCopyWithImpl<$Res>
    implements _$BibleVerseCopyWith<$Res> {
  __$BibleVerseCopyWithImpl(
      _BibleVerse _value, $Res Function(_BibleVerse) _then)
      : super(_value, (v) => _then(v as _BibleVerse));

  @override
  _BibleVerse get _value => super._value as _BibleVerse;

  @override
  $Res call({
    Object? text = freezed,
    Object? verse = freezed,
  }) {
    return _then(_BibleVerse(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      verse: verse == freezed
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BibleVerse implements _BibleVerse {
  const _$_BibleVerse(
      {@HiveField(16) required this.text, @HiveField(17) required this.verse});

  factory _$_BibleVerse.fromJson(Map<String, dynamic> json) =>
      _$_$_BibleVerseFromJson(json);

  @override
  @HiveField(16)
  final String text;
  @override
  @HiveField(17)
  final int verse;

  @override
  String toString() {
    return 'BibleVerse(text: $text, verse: $verse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BibleVerse &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.verse, verse) ||
                const DeepCollectionEquality().equals(other.verse, verse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(verse);

  @JsonKey(ignore: true)
  @override
  _$BibleVerseCopyWith<_BibleVerse> get copyWith =>
      __$BibleVerseCopyWithImpl<_BibleVerse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BibleVerseToJson(this);
  }
}

abstract class _BibleVerse implements BibleVerse {
  const factory _BibleVerse(
      {@HiveField(16) required String text,
      @HiveField(17) required int verse}) = _$_BibleVerse;

  factory _BibleVerse.fromJson(Map<String, dynamic> json) =
      _$_BibleVerse.fromJson;

  @override
  @HiveField(16)
  String get text => throw _privateConstructorUsedError;
  @override
  @HiveField(17)
  int get verse => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BibleVerseCopyWith<_BibleVerse> get copyWith =>
      throw _privateConstructorUsedError;
}
