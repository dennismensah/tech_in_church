// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$_$_ChatMessageFromJson(Map<String, dynamic> json) {
  return _$_ChatMessage(
    id: json['id'] as int,
    message: json['message'] as String,
    sent_on: json['sent_on'] as String,
    sendername: json['sendername'] as String,
    recipient: json['recipient'] as int,
    sender: json['sender'] as int,
    conversation_id: json['conversation_id'] as int,
    senderimage: json['senderimage'] as String?,
    recipientimage: json['recipientimage'] as String?,
  );
}

Map<String, dynamic> _$_$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'sent_on': instance.sent_on,
      'sendername': instance.sendername,
      'recipient': instance.recipient,
      'sender': instance.sender,
      'conversation_id': instance.conversation_id,
      'senderimage': instance.senderimage,
      'recipientimage': instance.recipientimage,
    };
