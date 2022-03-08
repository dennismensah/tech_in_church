import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';

abstract class IBibleChapterLocalDatasource {
  Future<Option<BibleChapter>> getBibleChapter(String searchStr);
  Future<void> saveBibleChapter(BibleChapter chapter);
}
