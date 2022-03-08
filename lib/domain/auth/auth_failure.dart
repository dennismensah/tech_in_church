import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
 class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.userAlreadyExists() =
      UserAlreadyExists;
  const factory AuthFailure.cancelledByUser() =
      CancelledByUser;
  const factory AuthFailure.socialLoginFailed() =
      SocialLoginFailed;
  const factory AuthFailure.emailNotAssociatedWithAnyAccount() =
      EmailNotAssociatedWithAnyAccount;
  const factory AuthFailure.invalidFields() = InvalidFields;
  const factory AuthFailure.noNetwork() = NoNetwork;
}
