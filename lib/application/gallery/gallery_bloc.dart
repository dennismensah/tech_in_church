import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/gallery/gallery.dart';
import 'package:tech_in_church/domain/gallery/gallery_failure.dart';
import 'package:tech_in_church/domain/gallery/i_gallery_repository.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

@Injectable()
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final IGalleryRepository _galleryRepository;
  GalleryBloc(this._galleryRepository) : super(const GalleryState.initial());

  @override
  Stream<GalleryState> mapEventToState(
    GalleryEvent event,
  ) async* {
    yield* event.map(galleryFetched: (e) async* {
      yield const GalleryState.loading();
      final galleriesOption = await _galleryRepository.getGalleries();
      yield galleriesOption.fold(
        (l) =>  GalleryState.loadedUnSuccessfully(l),
        (r) => GalleryState.loadedSuccessfully(r),
      );
    });
  }
}
