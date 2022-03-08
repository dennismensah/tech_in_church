// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Poll _$_$_PollFromJson(Map<String, dynamic> json) {
  return _$_Poll(
    id: json['id'] as int,
    title: json['title'] as String,
    question: json['question'] as String,
    end_time: json['end_time'] as String,
    startname: json['startname'] as String,
    creator: json['creator'] as String,
    results: (json['results'] as List<dynamic>)
        .map((e) => PollResult.fromJson(e as Map<String, dynamic>))
        .toList(),
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
    voted: json['voted'] as int,
  );
}

Map<String, dynamic> _$_$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'question': instance.question,
      'end_time': instance.end_time,
      'startname': instance.startname,
      'creator': instance.creator,
      'results': instance.results,
      'mask': instance.mask,
      'created_at': instance.created_at,
      'voted': instance.voted,
    };
