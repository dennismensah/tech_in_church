import 'package:dio/dio.dart';

abstract class IGalleryRemoteDataSource {
  Future<Response?> getGalleries();
}
