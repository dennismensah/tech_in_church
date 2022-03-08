// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counsellor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Counsellor _$CounsellorFromJson(Map<String, dynamic> json) {
  return _Counsellor.fromJson(json);
}

/// @nodoc
class _$CounsellorTearOff {
  const _$CounsellorTearOff();

  _Counsellor call(
      {required int id,
      required String name,
      String? avatar,
      Chat? chat,
      required int conversation_id}) {
    return _Counsellor(
      id: id,
      name: name,
      avatar: avatar,
      chat: chat,
      conversation_id: conversation_id,
    );
  }

  Counsellor fromJson(Map<String, Object> json) {
    return Counsellor.fromJson(json);
  }
}

/// @nodoc
const $Counsellor = _$CounsellorTearOff();

/// @nodoc
mixin _$Counsellor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  Chat? get chat => throw _privateConstructorUsedError;
  int get conversation_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounsellorCopyWith<Counsellor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounsellorCopyWith<$Res> {
  factory $CounsellorCopyWith(
          Counsellor value, $Res Function(Counsellor) then) =
      _$CounsellorCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String? avatar, Chat? chat, int conversation_id});

  $ChatCopyWith<$Res>? get chat;
}

/// @nodoc
class _$CounsellorCopyWithImpl<$Res> implements $CounsellorCopyWith<$Res> {
  _$CounsellorCopyWithImpl(this._value, this._then);

  final Counsellor _value;
  // ignore: unused_field
  final $Res Function(Counsellor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? chat = freezed,
    Object? conversation_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ChatCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
abstract class _$CounsellorCopyWith<$Res> implements $CounsellorCopyWith<$Res> {
  factory _$CounsellorCopyWith(
          _Counsellor value, $Res Function(_Counsellor) then) =
      __$CounsellorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String? avatar, Chat? chat, int conversation_id});

  @override
  $ChatCopyWith<$Res>? get chat;
}

/// @nodoc
class __$CounsellorCopyWithImpl<$Res> extends _$CounsellorCopyWithImpl<$Res>
    implements _$CounsellorCopyWith<$Res> {
  __$CounsellorCopyWithImpl(
      _Counsellor _value, $Res Function(_Counsellor) _then)
      : super(_value, (v) => _then(v as _Counsellor));

  @override
  _Counsellor get _value => super._value as _Counsellor;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? chat = freezed,
    Object? conversation_id = freezed,
  }) {
    return _then(_Counsellor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Counsellor implements _Counsellor {
  const _$_Counsellor(
      {required this.id,
      required this.name,
      this.avatar,
      this.chat,
      required this.conversation_id});

  factory _$_Counsellor.fromJson(Map<String, dynamic> json) =>
      _$_$_CounsellorFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final Chat? chat;
  @override
  final int conversation_id;

  @override
  String toString() {
    return 'Counsellor(id: $id, name: $name, avatar: $avatar, chat: $chat, conversation_id: $conversation_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Counsellor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.conversation_id, conversation_id) ||
                const DeepCollectionEquality()
                    .equals(other.conversation_id, conversation_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(conversation_id);

  @JsonKey(ignore: true)
  @override
  _$CounsellorCopyWith<_Counsellor> get copyWith =>
      __$CounsellorCopyWithImpl<_Counsellor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CounsellorToJson(this);
  }
}

abstract class _Counsellor implements Counsellor {
  const factory _Counsellor(
      {required int id,
      required String name,
      String? avatar,
      Chat? chat,
      required int conversation_id}) = _$_Counsellor;

  factory _Counsellor.fromJson(Map<String, dynamic> json) =
      _$_Counsellor.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get avatar => throw _privateConstructorUsedError;
  @override
  Chat? get chat => throw _privateConstructorUsedError;
  @override
  int get conversation_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounsellorCopyWith<_Counsellor> get copyWith =>
      throw _privateConstructorUsedError;
}
