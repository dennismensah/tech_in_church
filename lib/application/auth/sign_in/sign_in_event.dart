part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInEvent.signInWithFacebookPressed() =
      SignInWithFacebookPressed;
  const factory SignInEvent.signInWithApplePressed() =
      SignInWithApplePressed;
}
