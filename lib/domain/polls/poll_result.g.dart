// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollResult _$_$_PollResultFromJson(Map<String, dynamic> json) {
  return _$_PollResult(
    id: json['id'] as int,
    answer: json['answer'] as String,
    total: json['total'] as int,
    voted: json['voted'] as bool,
  );
}

Map<String, dynamic> _$_$_PollResultToJson(_$_PollResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'total': instance.total,
      'voted': instance.voted,
    };
