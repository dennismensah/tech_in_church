import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gallery_image.freezed.dart';
part 'gallery_image.g.dart';

@freezed
class GalleryImage with _$GalleryImage {
  const factory GalleryImage({
    required int id,
    required String image,
  }) = _GalleryImage;

  factory GalleryImage.fromJson(Map<String, dynamic> json) => _$GalleryImageFromJson(json);
}