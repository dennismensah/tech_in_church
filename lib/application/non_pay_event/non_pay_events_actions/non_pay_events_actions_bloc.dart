import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/non_pay_event/i_non_pay_event_repository.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event_failure.dart';

part 'non_pay_events_actions_event.dart';
part 'non_pay_events_actions_state.dart';
part 'non_pay_events_actions_bloc.freezed.dart';

@Injectable()
class NonPayEventsActionsBloc
    extends Bloc<NonPayEventsActionsEvent, NonPayEventsActionsState> {
  final INonPayEventRepository _nonPayEventRepository;
  NonPayEventsActionsBloc(this._nonPayEventRepository)
      : super(const NonPayEventsActionsState.initial());

  @override
  Stream<NonPayEventsActionsState> mapEventToState(
    NonPayEventsActionsEvent event,
  ) async* {
    yield* event.map(
      nonPayEventRegistered: (e) async* {
        yield const NonPayEventsActionsState.loading();
        final galleriesOption =
            await _nonPayEventRepository.registerForNonPayEvents(e.eventid);
        yield galleriesOption.fold(
          (l) => NonPayEventsActionsState.registeredUnsuccessfully(l),
          (r) => NonPayEventsActionsState.registeredSuccessfully(),
        );
      },
    );
  }
}
