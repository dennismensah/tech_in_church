import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/podcast/i_podcast_repository.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/domain/podcast/podcast_failure.dart';

part 'podcast_event.dart';
part 'podcast_state.dart';
part 'podcast_bloc.freezed.dart';

@Injectable()
class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  final IPodcastRepository _podcastRepository;
  PodcastBloc(this._podcastRepository) : super(const PodcastState.initial());

  @override
  Stream<PodcastState> mapEventToState(
    PodcastEvent event,
  ) async* {
    yield* event.map(
      podcastFetched: (e) async* {
        yield const PodcastState.loading();
        final galleriesOption = await _podcastRepository.getPodcasts();
        yield galleriesOption.fold(
          (l) =>  PodcastState.loadedUnSuccessfully(l),
          (r) => PodcastState.loadedSuccessfully(
            r,
            r.where((element) => element.bookmark == 1).toList(),
          ),
        );
      },
    );
  }
}
