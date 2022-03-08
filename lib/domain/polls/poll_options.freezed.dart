// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollOptions _$PollOptionsFromJson(Map<String, dynamic> json) {
  return _PollOptions.fromJson(json);
}

/// @nodoc
class _$PollOptionsTearOff {
  const _$PollOptionsTearOff();

  _PollOptions call({required int id, required String answer}) {
    return _PollOptions(
      id: id,
      answer: answer,
    );
  }

  PollOptions fromJson(Map<String, Object> json) {
    return PollOptions.fromJson(json);
  }
}

/// @nodoc
const $PollOptions = _$PollOptionsTearOff();

/// @nodoc
mixin _$PollOptions {
  int get id => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionsCopyWith<PollOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionsCopyWith<$Res> {
  factory $PollOptionsCopyWith(
          PollOptions value, $Res Function(PollOptions) then) =
      _$PollOptionsCopyWithImpl<$Res>;
  $Res call({int id, String answer});
}

/// @nodoc
class _$PollOptionsCopyWithImpl<$Res> implements $PollOptionsCopyWith<$Res> {
  _$PollOptionsCopyWithImpl(this._value, this._then);

  final PollOptions _value;
  // ignore: unused_field
  final $Res Function(PollOptions) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PollOptionsCopyWith<$Res>
    implements $PollOptionsCopyWith<$Res> {
  factory _$PollOptionsCopyWith(
          _PollOptions value, $Res Function(_PollOptions) then) =
      __$PollOptionsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String answer});
}

/// @nodoc
class __$PollOptionsCopyWithImpl<$Res> extends _$PollOptionsCopyWithImpl<$Res>
    implements _$PollOptionsCopyWith<$Res> {
  __$PollOptionsCopyWithImpl(
      _PollOptions _value, $Res Function(_PollOptions) _then)
      : super(_value, (v) => _then(v as _PollOptions));

  @override
  _PollOptions get _value => super._value as _PollOptions;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_PollOptions(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PollOptions implements _PollOptions {
  const _$_PollOptions({required this.id, required this.answer});

  factory _$_PollOptions.fromJson(Map<String, dynamic> json) =>
      _$_$_PollOptionsFromJson(json);

  @override
  final int id;
  @override
  final String answer;

  @override
  String toString() {
    return 'PollOptions(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollOptions &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$PollOptionsCopyWith<_PollOptions> get copyWith =>
      __$PollOptionsCopyWithImpl<_PollOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PollOptionsToJson(this);
  }
}

abstract class _PollOptions implements PollOptions {
  const factory _PollOptions({required int id, required String answer}) =
      _$_PollOptions;

  factory _PollOptions.fromJson(Map<String, dynamic> json) =
      _$_PollOptions.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollOptionsCopyWith<_PollOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
