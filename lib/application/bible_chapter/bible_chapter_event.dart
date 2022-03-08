part of 'bible_chapter_bloc.dart';

@freezed
class BibleChapterEvent with _$BibleChapterEvent {
  const factory BibleChapterEvent.bibleChapterFetched(String searchStr) =
      BibleChapterFetched;
}