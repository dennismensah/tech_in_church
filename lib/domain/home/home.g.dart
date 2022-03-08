// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$_$_HomeFromJson(Map<String, dynamic> json) {
  return _$_Home(
    youtube: (json['youtube'] as List<dynamic>)
        .map((e) => YoutubeLink.fromJson(e as Map<String, dynamic>))
        .toList(),
    summary: json['summary'] == null
        ? null
        : ChurchToday.fromJson(json['summary'] as Map<String, dynamic>),
    announcement: (json['announcement'] as List<dynamic>)
        .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
        .toList(),
    videos_number: json['videos_number'] as int,
    events_number: json['events_number'] as int,
    activities_number: json['activities_number'] as int,
    featured_video: json['featured_video'] == null
        ? null
        : YoutubeLink.fromJson(json['featured_video'] as Map<String, dynamic>),
    audio_number: json['audio_number'] as int,
    first_name: json['first_name'] as String,
    counselling_groups: (json['counselling_groups'] as List<dynamic>)
        .map((e) => CounsellingGroups.fromJson(e as Map<String, dynamic>))
        .toList(),
    quotation: json['quotation'] as String,
  );
}

Map<String, dynamic> _$_$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'youtube': instance.youtube,
      'summary': instance.summary,
      'announcement': instance.announcement,
      'videos_number': instance.videos_number,
      'events_number': instance.events_number,
      'activities_number': instance.activities_number,
      'featured_video': instance.featured_video,
      'audio_number': instance.audio_number,
      'first_name': instance.first_name,
      'counselling_groups': instance.counselling_groups,
      'quotation': instance.quotation,
    };
