part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.initial() = Initial;
  const factory GalleryState.loading() = Loading;
  const factory GalleryState.loadedSuccessfully(List<Gallery> galleries) = LoadedSuccessfully;
  const factory GalleryState.loadedUnSuccessfully(GalleryFailure failure) = LoadedUnsuccessfully;
}
