import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_verse.dart';

part 'bible_chapter.freezed.dart';
part 'bible_chapter.g.dart';

@freezed
@HiveType(typeId: 2)
class BibleChapter with _$BibleChapter{
  const factory BibleChapter({
    @HiveField(15) required List<BibleVerse> verses,
  }) = _BibleChapter;

  factory BibleChapter.fromJson(Map<String, dynamic> json) =>
      _$BibleChapterFromJson(json);
}