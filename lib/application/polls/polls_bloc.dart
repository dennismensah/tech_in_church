import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/polls/i_poll_repository.dart';
import 'package:tech_in_church/domain/polls/poll.dart';
import 'package:tech_in_church/domain/polls/poll_failure.dart';

part 'polls_event.dart';
part 'polls_state.dart';
part 'polls_bloc.freezed.dart';

@Injectable()
class PollsBloc extends Bloc<PollsEvent, PollsState> {
  final IPollRepository _pollRepository;
  PollsBloc(this._pollRepository) : super(const PollsState.initial());

  @override
  Stream<PollsState> mapEventToState(
    PollsEvent event,
  ) async* {
    yield* event.map(pollsFetched: (e) async* {
      yield const PollsState.loading();
      final galleriesOption = await _pollRepository.getPolls();
      yield galleriesOption.fold(
        (l) =>  PollsState.loadedUnSuccessfully(l),
        (r) => PollsState.loadedSuccessfully(r),
      );
    });
  }
}
