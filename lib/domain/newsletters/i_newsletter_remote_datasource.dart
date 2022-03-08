import 'package:dio/dio.dart';

abstract class INewsletterRemoteDataSource {
  Future<Response?> getNewsletters();
}
