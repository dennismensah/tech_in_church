import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/domain/gallery/gallery_image.dart';

part 'gallery.freezed.dart';
part 'gallery.g.dart';

@freezed
class Gallery with _$Gallery {
  const factory Gallery({
    required int id,
    required String title,
    required String? description,
    required String mask,
    required String creator,
    required String thumbnail,
    required List<GalleryImage> images,
    required String created_at,
  }) = _Gallery;

  factory Gallery.fromJson(Map<String, dynamic> json) =>
      _$GalleryFromJson(json);
}
