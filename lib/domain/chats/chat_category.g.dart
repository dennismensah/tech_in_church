// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCategory _$_$_ChatCategoryFromJson(Map<String, dynamic> json) {
  return _$_ChatCategory(
    id: json['id'] as int,
    title: json['title'] as String,
    mask: json['mask'] as String,
    counsellors: (json['counsellors'] as List<dynamic>)
        .map((e) => Counsellor.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ChatCategoryToJson(_$_ChatCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'mask': instance.mask,
      'counsellors': instance.counsellors,
    };
