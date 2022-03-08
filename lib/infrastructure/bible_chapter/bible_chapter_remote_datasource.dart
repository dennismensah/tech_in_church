import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_remote_datasource.dart';
import 'package:tech_in_church/domain/core/exceptions.dart';

@LazySingleton(as: IBibleChapterRemoteDataSource)
class BibleChapterRemoteDataSource implements IBibleChapterRemoteDataSource {
  final Dio httpClient;
  BibleChapterRemoteDataSource(this.httpClient);
  @override
  Future<Response?> getBibleChapter(String searchStr) async {
    // httpClient.options.baseUrl = "https://bible-api.com/";
    try {
      final response = await Dio(BaseOptions(baseUrl: 'https://bible-api.com/')).get(searchStr);
      return response;
    } on DioError catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
