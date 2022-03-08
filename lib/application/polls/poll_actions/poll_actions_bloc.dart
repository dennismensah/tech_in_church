import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/polls/i_poll_repository.dart';
import 'package:tech_in_church/domain/polls/poll.dart';

part 'poll_actions_event.dart';
part 'poll_actions_state.dart';
part 'poll_actions_bloc.freezed.dart';

@Injectable()
class PollActionsBloc extends Bloc<PollActionsEvent, PollActionsState> {
  final IPollRepository _pollRepository;
  PollActionsBloc(this._pollRepository) : super(PollActionsState.initial());

  @override
  Stream<PollActionsState> mapEventToState(
    PollActionsEvent event,
  ) async* {
    yield* event.map(voted: (Voted e)async*{
      yield const PollActionsState.loading();
      final galleriesOption = await _pollRepository.vote(e.mask, e.pollId, e.answerId);
      yield galleriesOption.fold(
            (l) =>    PollActionsState.loadedUnSuccessfully(l.maybeMap( serverError: (e)=>e.message, orElse: ()=>'')),
            (r) => PollActionsState.loadedSuccessfully(),
      );
    });
  }
}
