part of 'non_pay_events_actions_bloc.dart';

@freezed
class NonPayEventsActionsEvent with _$NonPayEventsActionsEvent {
  const factory NonPayEventsActionsEvent.nonPayEventRegistered(int eventid) =
      NonPayEventRegistered;
}