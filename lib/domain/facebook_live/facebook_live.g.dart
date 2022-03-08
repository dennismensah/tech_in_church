// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facebook_live.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacebookLive _$_$_FacebookLiveFromJson(Map<String, dynamic> json) {
  return _$_FacebookLive(
    id: json['id'] as int,
    title: json['title'] as String,
    link: json['link'] as String,
    creator: json['creator'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
    startname: json['startname'] as String,
  );
}

Map<String, dynamic> _$_$_FacebookLiveToJson(_$_FacebookLive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'creator': instance.creator,
      'mask': instance.mask,
      'created_at': instance.created_at,
      'startname': instance.startname,
    };
