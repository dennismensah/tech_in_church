// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_pay_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NonPayEvent _$_$_NonPayEventFromJson(Map<String, dynamic> json) {
  return _$_NonPayEvent(
    id: json['id'] as int,
    title: json['title'] as String,
    start_time: json['start_time'] as String,
    mask: json['mask'] as String,
    image: json['image'] as String,
    image_filename: json['image_filename'] as String,
    description: json['description'] as String,
    creator: json['creator'] as String,
    registered: json['registered'] as int,
    type: json['type'] as int,
    amount: json['amount'] as int,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_NonPayEventToJson(_$_NonPayEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_time': instance.start_time,
      'mask': instance.mask,
      'image': instance.image,
      'image_filename': instance.image_filename,
      'description': instance.description,
      'creator': instance.creator,
      'registered': instance.registered,
      'type': instance.type,
      'amount': instance.amount,
      'created_at': instance.created_at,
    };
