import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/youtube_links/i_youtube_link_repository.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link_failure.dart';

part 'youtube_links_event.dart';
part 'youtube_links_state.dart';
part 'youtube_links_bloc.freezed.dart';

@Injectable()
class YoutubeLinksBloc extends Bloc<YoutubeLinksEvent, YoutubeLinksState> {
  final IYoutubeLinkRepository _youtubeLinkRepository;
  YoutubeLinksBloc(this._youtubeLinkRepository)
      : super(const YoutubeLinksState.initial());

  @override
  Stream<YoutubeLinksState> mapEventToState(
    YoutubeLinksEvent event,
  ) async* {
    yield* event.map(
      youtubeLinksFetched: (e) async* {
        yield const YoutubeLinksState.loading();
        final galleriesOption = await _youtubeLinkRepository.getYoutubeLinks();
        yield galleriesOption.fold(
          (l) =>  YoutubeLinksState.loadedUnSuccessfully(l),
          (r) => YoutubeLinksState.loadedSuccessfully(r),
        );
      },
    );
  }
}
