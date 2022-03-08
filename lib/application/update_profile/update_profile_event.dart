part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.profileImgChanged(String? profileImgStr) =
      ProfileImgChanged;
   const factory UpdateProfileEvent.firstNameChanged(String firstNameStr) =
      FirstNameChanged;
  const factory UpdateProfileEvent.lastNameChanged(String lastNameStr) =
      LastNameChanged;
  const factory UpdateProfileEvent.genderChanged(String genderStr) =
      GenderChanged;
  const factory UpdateProfileEvent.emailChanged(String emailStr) = EmailChanged;
  const factory UpdateProfileEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory UpdateProfileEvent.typeChanged(String typeStr) = TypeChanged;
  const factory UpdateProfileEvent.dateOfBirthChanged(String dateOfBirthStr) =
      DateOfBirthChanged;
  // const factory UpdateProfileEvent.passwordChanged(String passwordStr) =
  //     PasswordChanged;
  // const factory UpdateProfileEvent.confirmPasswordChanged(String confirmPasswordStr) =
  //     ConfirmPasswordChanged;
  const factory UpdateProfileEvent.registerWithEmailAndPasswordPressed(String? mask) =
      RegisterWithEmailAndPasswordPressed;
}