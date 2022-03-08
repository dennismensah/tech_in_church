// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Podcast _$_$_PodcastFromJson(Map<String, dynamic> json) {
  return _$_Podcast(
    id: json['id'] as int,
    title: json['title'] as String,
    audio: json['audio'] as String,
    audio_filename: json['audio_filename'] as String,
    mask: json['mask'] as String,
    created_at: json['created_at'] as String,
    bookmark: json['bookmark'] as int,
  );
}

Map<String, dynamic> _$_$_PodcastToJson(_$_Podcast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'audio': instance.audio,
      'audio_filename': instance.audio_filename,
      'mask': instance.mask,
      'created_at': instance.created_at,
      'bookmark': instance.bookmark,
    };
