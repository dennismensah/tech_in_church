import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:tech_in_church/domain/gallery/gallery.dart';
import 'package:tech_in_church/domain/gallery/gallery_failure.dart';
import 'package:tech_in_church/domain/gallery/i_gallery_remote_datasource.dart';
import 'package:tech_in_church/domain/gallery/i_gallery_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGalleryRepository)
class GalleryRepository extends IGalleryRepository {
  final IGalleryRemoteDataSource galleryRemoteDataSource;
  final INetworkInfo networkInfo;
  GalleryRepository(
      {required this.galleryRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<GalleryFailure, List<Gallery>>> getGalleries() async {
    late Either<GalleryFailure, List<Gallery>> result =
        left(const GalleryFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await galleryRemoteDataSource.getGalleries();
        switch (response?.statusCode) {
          case 200:
            final galleryResponse = (response?.data?['data'] as List)
                .map((e) => Gallery.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(galleryResponse);
            break;
        }
      } else {
        result = left(const GalleryFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const GalleryFailure.serverError());
    }
    return result;
  }
}
