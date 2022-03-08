part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required String? profileImg,
    required RequiredField firstName,
    required RequiredField lastName,
    required RequiredField gender,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required RequiredField type,
    required Date dateOfBirth,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, UserToken>> authFailureOrSuccessOption,
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        profileImg: null,
        firstName: RequiredField(''),
        lastName: RequiredField(''),
        gender: RequiredField(''),
        emailAddress: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        type: RequiredField(''),
        dateOfBirth: Date(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('',''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
