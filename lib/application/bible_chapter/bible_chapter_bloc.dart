import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_repository.dart';

part 'bible_chapter_event.dart';
part 'bible_chapter_state.dart';
part 'bible_chapter_bloc.freezed.dart';

@Injectable()
class BibleChapterBloc extends Bloc<BibleChapterEvent, BibleChapterState> {
  final IBibleChapterRepository _bibleChapterRepository;
  BibleChapterBloc(this._bibleChapterRepository)
      : super(const BibleChapterState.initial());

  @override
  Stream<BibleChapterState> mapEventToState(
    BibleChapterEvent event,
  ) async* {
    yield* event.map(
      bibleChapterFetched: (e) async* {
        yield const BibleChapterState.loading();
        final galleriesOption =
            await _bibleChapterRepository.getBibleChapter(e.searchStr);
        yield galleriesOption.fold(
          (l) => const BibleChapterState.loadedUnSuccessfully(),
          (r) => BibleChapterState.loadedSuccessfully(r),
        );
      },
    );
  }
}
