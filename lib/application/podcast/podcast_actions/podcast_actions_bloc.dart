import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/podcast/i_podcast_repository.dart';
import 'package:tech_in_church/domain/podcast/podcast_failure.dart';

part 'podcast_actions_event.dart';
part 'podcast_actions_state.dart';
part 'podcast_actions_bloc.freezed.dart';

@Injectable()
class PodcastActionsBloc
    extends Bloc<PodcastActionsEvent, PodcastActionsState> {
  final IPodcastRepository _podcastRepository;
  PodcastActionsBloc(this._podcastRepository)
      : super(const PodcastActionsState.initial());

  @override
  Stream<PodcastActionsState> mapEventToState(
    PodcastActionsEvent event,
  ) async* {
    yield* event.map(
      podcastDownloaded: (PodcastDownloaded value) async* {
        yield const PodcastActionsState.loading();
        final galleriesOption = await _podcastRepository.downloadAudio(
            value.audioUrl, value.audioFileName);
        yield galleriesOption.fold(
          (l) => PodcastActionsState.downloadFailed(l),
          (r) => const PodcastActionsState.downloadedSuccessfully(),
        );
      },
      podcastBookmarked: (PodcastBookmarked value) async* {
        yield const PodcastActionsState.loading();
        final galleriesOption =
            await _podcastRepository.bookmarkPodcast(value.podcastId);
        yield galleriesOption.fold(
          (l) => PodcastActionsState.podcastBookmarkedUnsuccessfully(l),
          (r) => const PodcastActionsState.podcastBookmarkedSuccessfully(),
        );
      },
    );
  }
}
