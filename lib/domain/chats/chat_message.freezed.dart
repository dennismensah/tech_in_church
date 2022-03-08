// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(
      {required int id,
      required String message,
      required String sent_on,
      required String sendername,
      required int recipient,
      required int sender,
      required int conversation_id,
      String? senderimage,
      String? recipientimage}) {
    return _ChatMessage(
      id: id,
      message: message,
      sent_on: sent_on,
      sendername: sendername,
      recipient: recipient,
      sender: sender,
      conversation_id: conversation_id,
      senderimage: senderimage,
      recipientimage: recipientimage,
    );
  }

  ChatMessage fromJson(Map<String, Object> json) {
    return ChatMessage.fromJson(json);
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  int get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get sent_on => throw _privateConstructorUsedError;
  String get sendername => throw _privateConstructorUsedError;
  int get recipient => throw _privateConstructorUsedError;
  int get sender => throw _privateConstructorUsedError;
  int get conversation_id => throw _privateConstructorUsedError;
  String? get senderimage => throw _privateConstructorUsedError;
  String? get recipientimage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String message,
      String sent_on,
      String sendername,
      int recipient,
      int sender,
      int conversation_id,
      String? senderimage,
      String? recipientimage});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? sent_on = freezed,
    Object? sendername = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
    Object? conversation_id = freezed,
    Object? senderimage = freezed,
    Object? recipientimage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sent_on: sent_on == freezed
          ? _value.sent_on
          : sent_on // ignore: cast_nullable_to_non_nullable
              as String,
      sendername: sendername == freezed
          ? _value.sendername
          : sendername // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as int,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      senderimage: senderimage == freezed
          ? _value.senderimage
          : senderimage // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientimage: recipientimage == freezed
          ? _value.recipientimage
          : recipientimage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String message,
      String sent_on,
      String sendername,
      int recipient,
      int sender,
      int conversation_id,
      String? senderimage,
      String? recipientimage});
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? sent_on = freezed,
    Object? sendername = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
    Object? conversation_id = freezed,
    Object? senderimage = freezed,
    Object? recipientimage = freezed,
  }) {
    return _then(_ChatMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sent_on: sent_on == freezed
          ? _value.sent_on
          : sent_on // ignore: cast_nullable_to_non_nullable
              as String,
      sendername: sendername == freezed
          ? _value.sendername
          : sendername // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as int,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as int,
      senderimage: senderimage == freezed
          ? _value.senderimage
          : senderimage // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientimage: recipientimage == freezed
          ? _value.recipientimage
          : recipientimage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChatMessage implements _ChatMessage {
  const _$_ChatMessage(
      {required this.id,
      required this.message,
      required this.sent_on,
      required this.sendername,
      required this.recipient,
      required this.sender,
      required this.conversation_id,
      this.senderimage,
      this.recipientimage});

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatMessageFromJson(json);

  @override
  final int id;
  @override
  final String message;
  @override
  final String sent_on;
  @override
  final String sendername;
  @override
  final int recipient;
  @override
  final int sender;
  @override
  final int conversation_id;
  @override
  final String? senderimage;
  @override
  final String? recipientimage;

  @override
  String toString() {
    return 'ChatMessage(id: $id, message: $message, sent_on: $sent_on, sendername: $sendername, recipient: $recipient, sender: $sender, conversation_id: $conversation_id, senderimage: $senderimage, recipientimage: $recipientimage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.sent_on, sent_on) ||
                const DeepCollectionEquality()
                    .equals(other.sent_on, sent_on)) &&
            (identical(other.sendername, sendername) ||
                const DeepCollectionEquality()
                    .equals(other.sendername, sendername)) &&
            (identical(other.recipient, recipient) ||
                const DeepCollectionEquality()
                    .equals(other.recipient, recipient)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.conversation_id, conversation_id) ||
                const DeepCollectionEquality()
                    .equals(other.conversation_id, conversation_id)) &&
            (identical(other.senderimage, senderimage) ||
                const DeepCollectionEquality()
                    .equals(other.senderimage, senderimage)) &&
            (identical(other.recipientimage, recipientimage) ||
                const DeepCollectionEquality()
                    .equals(other.recipientimage, recipientimage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(sent_on) ^
      const DeepCollectionEquality().hash(sendername) ^
      const DeepCollectionEquality().hash(recipient) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(conversation_id) ^
      const DeepCollectionEquality().hash(senderimage) ^
      const DeepCollectionEquality().hash(recipientimage);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required int id,
      required String message,
      required String sent_on,
      required String sendername,
      required int recipient,
      required int sender,
      required int conversation_id,
      String? senderimage,
      String? recipientimage}) = _$_ChatMessage;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get sent_on => throw _privateConstructorUsedError;
  @override
  String get sendername => throw _privateConstructorUsedError;
  @override
  int get recipient => throw _privateConstructorUsedError;
  @override
  int get sender => throw _privateConstructorUsedError;
  @override
  int get conversation_id => throw _privateConstructorUsedError;
  @override
  String? get senderimage => throw _privateConstructorUsedError;
  @override
  String? get recipientimage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
