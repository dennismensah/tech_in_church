part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.profileImgChanged(String? profileImgStr) =
      ProfileImgChanged;
      const factory RegistrationEvent.firstNameChanged(String firstNameStr) =
      FirstNameChanged;
  const factory RegistrationEvent.lastNameChanged(String lastNameStr) =
      LastNameChanged;
  const factory RegistrationEvent.genderChanged(String genderStr) =
      GenderChanged;
  const factory RegistrationEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegistrationEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory RegistrationEvent.typeChanged(String typeStr) = TypeChanged;
  const factory RegistrationEvent.dateOfBirthChanged(String dateOfBirthStr) =
      DateOfBirthChanged;
  const factory RegistrationEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegistrationEvent.confirmPasswordChanged(String confirmPasswordStr) =
      ConfirmPasswordChanged;
  const factory RegistrationEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}
