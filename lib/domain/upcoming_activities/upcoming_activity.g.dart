// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingActivity _$_$_UpcomingActivityFromJson(Map<String, dynamic> json) {
  return _$_UpcomingActivity(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    image_filename: json['image_filename'] as String,
    creator: json['creator'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
    start_date: json['start_date'] as String,
    end_date: json['end_date'] as String,
    startname: json['startname'] as String,
    endname: json['endname'] as String,
  );
}

Map<String, dynamic> _$_$_UpcomingActivityToJson(
        _$_UpcomingActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'image_filename': instance.image_filename,
      'creator': instance.creator,
      'mask': instance.mask,
      'created_at': instance.created_at,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'startname': instance.startname,
      'endname': instance.endname,
    };
