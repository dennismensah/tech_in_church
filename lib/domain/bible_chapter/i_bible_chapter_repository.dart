import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter_failure.dart';

abstract class IBibleChapterRepository {
  Future<Either<BibleChapterFailure, BibleChapter>> getBibleChapter(String searchstr);
}