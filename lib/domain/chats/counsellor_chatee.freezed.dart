// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counsellor_chatee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounsellorChatee _$CounsellorChateeFromJson(Map<String, dynamic> json) {
  return _CounsellorChatee.fromJson(json);
}

/// @nodoc
class _$CounsellorChateeTearOff {
  const _$CounsellorChateeTearOff();

  _CounsellorChatee call(
      {required int conversation_id, required ChatMessage last_message}) {
    return _CounsellorChatee(
      conversation_id: conversation_id,
      last_message: last_message,
    );
  }

  CounsellorChatee fromJson(Map<String, Object> json) {
    return CounsellorChatee.fromJson(json);
  }
}

/// @nodoc
const $CounsellorChatee = _$CounsellorChateeTearOff();

/// @nodoc
mixin _$CounsellorChatee {
  int get conversation_id => throw _privateConstructorUsedError;
  ChatMessage get last_message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounsellorChateeCopyWith<CounsellorChatee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounsellorChateeCopyWith<$Res> {
  factory $CounsellorChateeCopyWith(
          CounsellorChatee value, $Res Function(CounsellorChatee) then) =
      _$CounsellorChateeCopyWithImpl<$Res>;
  $Res call({int conversation_id, ChatMessage last_message});

  $ChatMessageCopyWith<$Res> get last_message;
}

/// @nodoc
class _$CounsellorChateeCopyWithImpl<$Res>
    implements $CounsellorChateeCopyWith<$Res> {
  _$CounsellorChateeCopyWithImpl(this._value, this._then);

  final CounsellorChatee _value;
  // ignore: unused_field
  final $Res Function(CounsellorChatee) _then;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? last_message = freezed,
  }) {
    return _then(_value.copyWith(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      last_message: last_message == freezed
          ? _value.last_message
          : last_message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  @override
  $ChatMessageCopyWith<$Res> get last_message {
    return $ChatMessageCopyWith<$Res>(_value.last_message, (value) {
      return _then(_value.copyWith(last_message: value));
    });
  }
}

/// @nodoc
abstract class _$CounsellorChateeCopyWith<$Res>
    implements $CounsellorChateeCopyWith<$Res> {
  factory _$CounsellorChateeCopyWith(
          _CounsellorChatee value, $Res Function(_CounsellorChatee) then) =
      __$CounsellorChateeCopyWithImpl<$Res>;
  @override
  $Res call({int conversation_id, ChatMessage last_message});

  @override
  $ChatMessageCopyWith<$Res> get last_message;
}

/// @nodoc
class __$CounsellorChateeCopyWithImpl<$Res>
    extends _$CounsellorChateeCopyWithImpl<$Res>
    implements _$CounsellorChateeCopyWith<$Res> {
  __$CounsellorChateeCopyWithImpl(
      _CounsellorChatee _value, $Res Function(_CounsellorChatee) _then)
      : super(_value, (v) => _then(v as _CounsellorChatee));

  @override
  _CounsellorChatee get _value => super._value as _CounsellorChatee;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? last_message = freezed,
  }) {
    return _then(_CounsellorChatee(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      last_message: last_message == freezed
          ? _value.last_message
          : last_message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CounsellorChatee implements _CounsellorChatee {
  const _$_CounsellorChatee(
      {required this.conversation_id, required this.last_message});

  factory _$_CounsellorChatee.fromJson(Map<String, dynamic> json) =>
      _$_$_CounsellorChateeFromJson(json);

  @override
  final int conversation_id;
  @override
  final ChatMessage last_message;

  @override
  String toString() {
    return 'CounsellorChatee(conversation_id: $conversation_id, last_message: $last_message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounsellorChatee &&
            (identical(other.conversation_id, conversation_id) ||
                const DeepCollectionEquality()
                    .equals(other.conversation_id, conversation_id)) &&
            (identical(other.last_message, last_message) ||
                const DeepCollectionEquality()
                    .equals(other.last_message, last_message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(conversation_id) ^
      const DeepCollectionEquality().hash(last_message);

  @JsonKey(ignore: true)
  @override
  _$CounsellorChateeCopyWith<_CounsellorChatee> get copyWith =>
      __$CounsellorChateeCopyWithImpl<_CounsellorChatee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CounsellorChateeToJson(this);
  }
}

abstract class _CounsellorChatee implements CounsellorChatee {
  const factory _CounsellorChatee(
      {required int conversation_id,
      required ChatMessage last_message}) = _$_CounsellorChatee;

  factory _CounsellorChatee.fromJson(Map<String, dynamic> json) =
      _$_CounsellorChatee.fromJson;

  @override
  int get conversation_id => throw _privateConstructorUsedError;
  @override
  ChatMessage get last_message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounsellorChateeCopyWith<_CounsellorChatee> get copyWith =>
      throw _privateConstructorUsedError;
}
