// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChurchToday _$_$_ChurchTodayFromJson(Map<String, dynamic> json) {
  return _$_ChurchToday(
    id: json['id'] as int,
    title: json['title'] as String,
    details: json['details'] as String,
    day: json['day'] as String,
    dayname: json['dayname'] as String,
    creator: json['creator'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_ChurchTodayToJson(_$_ChurchToday instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'day': instance.day,
      'dayname': instance.dayname,
      'creator': instance.creator,
      'mask': instance.mask,
      'created_at': instance.created_at,
    };
