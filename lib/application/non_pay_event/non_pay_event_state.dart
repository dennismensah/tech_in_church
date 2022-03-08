part of 'non_pay_event_bloc.dart';

@freezed
class NonPayEventState with _$NonPayEventState {
  const factory NonPayEventState.initial() = Initial;
  const factory NonPayEventState.loading() = Loading;
  const factory NonPayEventState.loadedSuccessfully(List<NonPayEvent> nonPayEvents) = LoadedSuccessfully;
  const factory NonPayEventState.loadedUnSuccessfully(NonPayEventFailure failure) = LoadedUnsuccessfully;
}
