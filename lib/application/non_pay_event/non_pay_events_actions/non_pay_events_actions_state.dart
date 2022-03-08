part of 'non_pay_events_actions_bloc.dart';

@freezed
class NonPayEventsActionsState with _$NonPayEventsActionsState {
  const factory NonPayEventsActionsState.initial() = _Initial;
  const factory NonPayEventsActionsState.loading() = Loading;
  const factory NonPayEventsActionsState.registeredSuccessfully() =
      RegisteredSuccessfully;
  const factory NonPayEventsActionsState.registeredUnsuccessfully(NonPayEventFailure nonPayEventFailure) =
      RegisteredUnsuccessfully;
}
