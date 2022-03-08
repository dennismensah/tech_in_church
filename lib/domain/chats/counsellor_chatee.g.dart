// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counsellor_chatee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounsellorChatee _$_$_CounsellorChateeFromJson(Map<String, dynamic> json) {
  return _$_CounsellorChatee(
    conversation_id: json['conversation_id'] as int,
    last_message:
        ChatMessage.fromJson(json['last_message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CounsellorChateeToJson(
        _$_CounsellorChatee instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversation_id,
      'last_message': instance.last_message,
    };
