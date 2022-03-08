part of 'non_pay_event_bloc.dart';

@freezed
class NonPayEventEvent with _$NonPayEventEvent {
  const factory NonPayEventEvent.nonPayEventFetched() =
      NonPayEventFetched;
}