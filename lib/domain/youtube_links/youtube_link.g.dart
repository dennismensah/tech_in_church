// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeLink _$_$_YoutubeLinkFromJson(Map<String, dynamic> json) {
  return _$_YoutubeLink(
    id: json['id'] as int,
    title: json['title'] as String,
    link: json['link'] as String,
    startname: json['startname'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
    creator: json['creator'] as String,
  );
}

Map<String, dynamic> _$_$_YoutubeLinkToJson(_$_YoutubeLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'startname': instance.startname,
      'mask': instance.mask,
      'created_at': instance.created_at,
      'creator': instance.creator,
    };
