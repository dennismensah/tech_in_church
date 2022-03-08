// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollResult _$PollResultFromJson(Map<String, dynamic> json) {
  return _PollResult.fromJson(json);
}

/// @nodoc
class _$PollResultTearOff {
  const _$PollResultTearOff();

  _PollResult call(
      {required int id,
      required String answer,
      required int total,
      required bool voted}) {
    return _PollResult(
      id: id,
      answer: answer,
      total: total,
      voted: voted,
    );
  }

  PollResult fromJson(Map<String, Object> json) {
    return PollResult.fromJson(json);
  }
}

/// @nodoc
const $PollResult = _$PollResultTearOff();

/// @nodoc
mixin _$PollResult {
  int get id => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get voted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollResultCopyWith<PollResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollResultCopyWith<$Res> {
  factory $PollResultCopyWith(
          PollResult value, $Res Function(PollResult) then) =
      _$PollResultCopyWithImpl<$Res>;
  $Res call({int id, String answer, int total, bool voted});
}

/// @nodoc
class _$PollResultCopyWithImpl<$Res> implements $PollResultCopyWith<$Res> {
  _$PollResultCopyWithImpl(this._value, this._then);

  final PollResult _value;
  // ignore: unused_field
  final $Res Function(PollResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
    Object? total = freezed,
    Object? voted = freezed,
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
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PollResultCopyWith<$Res> implements $PollResultCopyWith<$Res> {
  factory _$PollResultCopyWith(
          _PollResult value, $Res Function(_PollResult) then) =
      __$PollResultCopyWithImpl<$Res>;
  @override
  $Res call({int id, String answer, int total, bool voted});
}

/// @nodoc
class __$PollResultCopyWithImpl<$Res> extends _$PollResultCopyWithImpl<$Res>
    implements _$PollResultCopyWith<$Res> {
  __$PollResultCopyWithImpl(
      _PollResult _value, $Res Function(_PollResult) _then)
      : super(_value, (v) => _then(v as _PollResult));

  @override
  _PollResult get _value => super._value as _PollResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
    Object? total = freezed,
    Object? voted = freezed,
  }) {
    return _then(_PollResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PollResult implements _PollResult {
  const _$_PollResult(
      {required this.id,
      required this.answer,
      required this.total,
      required this.voted});

  factory _$_PollResult.fromJson(Map<String, dynamic> json) =>
      _$_$_PollResultFromJson(json);

  @override
  final int id;
  @override
  final String answer;
  @override
  final int total;
  @override
  final bool voted;

  @override
  String toString() {
    return 'PollResult(id: $id, answer: $answer, total: $total, voted: $voted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.voted, voted) ||
                const DeepCollectionEquality().equals(other.voted, voted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(voted);

  @JsonKey(ignore: true)
  @override
  _$PollResultCopyWith<_PollResult> get copyWith =>
      __$PollResultCopyWithImpl<_PollResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PollResultToJson(this);
  }
}

abstract class _PollResult implements PollResult {
  const factory _PollResult(
      {required int id,
      required String answer,
      required int total,
      required bool voted}) = _$_PollResult;

  factory _PollResult.fromJson(Map<String, dynamic> json) =
      _$_PollResult.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get answer => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  bool get voted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollResultCopyWith<_PollResult> get copyWith =>
      throw _privateConstructorUsedError;
}
