part of 'validate_subdomain_bloc.dart';

@freezed
class ValidateSubdomainState with _$ValidateSubdomainState {
  const factory ValidateSubdomainState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ValidateSubdomainState;

  factory ValidateSubdomainState.initial() => ValidateSubdomainState(
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
  // const factory ValidateSubdomainState.initial() = Initial;
  // const factory ValidateSubdomainState.validated() = Validated;
  // const factory ValidateSubdomainState.notValidated(AuthFailure failure) = NotValidated;
}