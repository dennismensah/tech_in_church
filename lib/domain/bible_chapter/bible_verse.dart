import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'bible_verse.freezed.dart';
part 'bible_verse.g.dart';

@freezed
@HiveType(typeId: 3)
class BibleVerse with _$BibleVerse{
  const factory BibleVerse({
    @HiveField(16) required String text,
    @HiveField(17) required int verse,
  }) = _BibleVerse;

  factory BibleVerse.fromJson(Map<String, dynamic> json) =>
      _$BibleVerseFromJson(json);
}