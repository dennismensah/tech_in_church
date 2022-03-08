part of 'offering_bloc.dart';

@freezed
class OfferingState with _$OfferingState {
  const factory OfferingState({
    required RequiredField cardNumber,
    required Date expirationDate,
    required RequiredField cvc,
    required RequiredField amount,
    required RequiredField name,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<OfferingFailure, String>> authFailureOrSuccessOption,
    required Option<Either<OfferingFailure, Unit>> updateFailureOrSuccessOption,
  }) = _OfferingState;

  factory OfferingState.initial() => OfferingState(
        cardNumber: RequiredField(''),
        expirationDate: Date(''),
        cvc: RequiredField(''),
        name: RequiredField(''),
        amount: RequiredField(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        updateFailureOrSuccessOption: none(),
      );
}
