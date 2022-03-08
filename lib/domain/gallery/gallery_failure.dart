import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_failure.freezed.dart';

@freezed
 class GalleryFailure with _$GalleryFailure {
   const factory GalleryFailure.initial() = Initial;
  const factory GalleryFailure.serverError() = ServerError;
  const factory GalleryFailure.noNetwork() = NoNetwork;
}