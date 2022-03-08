// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsletter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Newsletter _$_$_NewsletterFromJson(Map<String, dynamic> json) {
  return _$_Newsletter(
    id: json['id'] as int,
    title: json['title'] as String,
    message: json['message'] as String,
    creator: json['creator'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_NewsletterToJson(_$_Newsletter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'creator': instance.creator,
      'mask': instance.mask,
      'created_at': instance.created_at,
    };
