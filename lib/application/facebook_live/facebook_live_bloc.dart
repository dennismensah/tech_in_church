import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live_failure.dart';
import 'package:tech_in_church/domain/facebook_live/i_facebook_live_repository.dart';

part 'facebook_live_event.dart';
part 'facebook_live_state.dart';
part 'facebook_live_bloc.freezed.dart';

@Injectable()
class FacebookLiveBloc extends Bloc<FacebookLiveEvent, FacebookLiveState> {
  final IFacebookLiveRepository _facebookLiveRepository;
  FacebookLiveBloc(this._facebookLiveRepository)
      : super(const FacebookLiveState.initial());

  @override
  Stream<FacebookLiveState> mapEventToState(
    FacebookLiveEvent event,
  ) async* {
    yield* event.map(facebookLiveVideosFetched: (e) async* {
      yield const FacebookLiveState.loading();
      final galleriesOption =
          await _facebookLiveRepository.getFacebookLiveVideos();
      yield galleriesOption.fold(
        (l) =>  FacebookLiveState.loadedUnSuccessfully(l),
        (r) => FacebookLiveState.loadedSuccessfully(r),
      );
    });
  }
}
