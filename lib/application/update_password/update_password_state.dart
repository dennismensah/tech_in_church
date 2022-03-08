part of 'update_password_bloc.dart';

@freezed
class UpdatePasswordState with _$UpdatePasswordState {
  const factory UpdatePasswordState({
    required Password currentPassword,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdatePasswordState;

  factory UpdatePasswordState.initial() => UpdatePasswordState(
        currentPassword: Password(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', ''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
