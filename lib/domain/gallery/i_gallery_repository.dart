import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/gallery/gallery.dart';
import 'package:tech_in_church/domain/gallery/gallery_failure.dart';

abstract class IGalleryRepository {
  Future<Either<GalleryFailure, List<Gallery>>> getGalleries();
}
