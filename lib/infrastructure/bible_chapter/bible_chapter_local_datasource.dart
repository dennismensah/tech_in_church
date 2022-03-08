import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_local_datasource.dart';

@Injectable(as: IBibleChapterLocalDatasource)
class BibleChapterLocalDatasource implements IBibleChapterLocalDatasource {
  final HiveInterface db;
  BibleChapterLocalDatasource({required this.db});
  @override
  Future<Option<BibleChapter>> getBibleChapter(String searchStr) async {
    final boxExists = await db.boxExists('biblechapter');
    final boxisnotEmpty = db.box<BibleChapter>('biblechapter').isNotEmpty;
    if (boxExists && boxisnotEmpty) {
      return some(db.box<BibleChapter>('biblechapter').values.first);
    }
    return none();
  }

  @override
  Future<void> saveBibleChapter(BibleChapter chapter) async {
    await db
        .box<BibleChapter>('biblechapter')
        .clear()
        .then((value) async => db.box<BibleChapter>('biblechapter').add(chapter));
  }
}
