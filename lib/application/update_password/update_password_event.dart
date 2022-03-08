part of 'update_password_bloc.dart';

@freezed
class UpdatePasswordEvent with _$UpdatePasswordEvent {
  const factory UpdatePasswordEvent.currentPasswordChanged(String currentPasswordStr) =
  CurrentPasswordChanged;
  const factory UpdatePasswordEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory UpdatePasswordEvent.confirmPasswordChanged(String confirmPasswordStr) =
      ConfirmPasswordChanged;
  const factory UpdatePasswordEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}