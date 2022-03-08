// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gallery _$_$_GalleryFromJson(Map<String, dynamic> json) {
  return _$_Gallery(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String?,
    mask: json['mask'] as String,
    creator: json['creator'] as String,
    thumbnail: json['thumbnail'] as String,
    images: (json['images'] as List<dynamic>)
        .map((e) => GalleryImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_GalleryToJson(_$_Gallery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'mask': instance.mask,
      'creator': instance.creator,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'created_at': instance.created_at,
    };
