// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counsellor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Counsellor _$_$_CounsellorFromJson(Map<String, dynamic> json) {
  return _$_Counsellor(
    id: json['id'] as int,
    name: json['name'] as String,
    avatar: json['avatar'] as String?,
    chat: json['chat'] == null
        ? null
        : Chat.fromJson(json['chat'] as Map<String, dynamic>),
    conversation_id: json['conversation_id'] as int,
  );
}

Map<String, dynamic> _$_$_CounsellorToJson(_$_Counsellor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'chat': instance.chat,
      'conversation_id': instance.conversation_id,
    };
