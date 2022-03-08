import 'package:dio/dio.dart';

abstract class IBibleChapterRemoteDataSource {
  Future<Response?> getBibleChapter(String searchStr);
}
