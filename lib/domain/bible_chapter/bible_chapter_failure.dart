import 'package:freezed_annotation/freezed_annotation.dart';

part 'bible_chapter_failure.freezed.dart';

@freezed
 class BibleChapterFailure with _$BibleChapterFailure {
   const factory BibleChapterFailure.initial() = Initial;
  const factory BibleChapterFailure.serverError() = ServerError;
  const factory BibleChapterFailure.cacheError() = CacheError;
  const factory BibleChapterFailure.noNetwork() = NoNetwork;
}