part of 'bible_chapter_bloc.dart';

@freezed
class BibleChapterState with _$BibleChapterState {
   const factory BibleChapterState.initial() = Initial;
  const factory BibleChapterState.loading() = Loading;
  const factory BibleChapterState.loadedSuccessfully(BibleChapter bibleverses) = LoadedSuccessfully;
  const factory BibleChapterState.loadedUnSuccessfully() = LoadedUnsuccessfully;
}
