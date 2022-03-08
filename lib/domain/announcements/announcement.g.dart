// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$_$_AnnouncementFromJson(Map<String, dynamic> json) {
  return _$_Announcement(
    id: json['id'] as int,
    title: json['title'] as String,
    message: json['message'] as String,
    image: json['image'] as String,
    image_filename: json['image_filename'] as String,
    creator: json['creator'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_AnnouncementToJson(_$_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'image': instance.image,
      'image_filename': instance.image_filename,
      'creator': instance.creator,
      'mask': instance.mask,
      'created_at': instance.created_at,
    };
