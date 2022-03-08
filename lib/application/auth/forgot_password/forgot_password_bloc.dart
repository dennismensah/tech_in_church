import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@Injectable()
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
      final IAuthRepository _authRepository;
  ForgotPasswordBloc(this._authRepository) : super(ForgotPasswordState.initial());

  @override
  Stream<ForgotPasswordState> mapEventToState(
    ForgotPasswordEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      forgotPasswordPressed: (e) async* {
        yield* _performActionOnAuthRepositoryWithEmailAndPassword(
          _authRepository.forgotPassword,
        );
      },
    );
  }

  Stream<ForgotPasswordState> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(Map data) forwardedCall,
  ) async* {
    // late Either<AuthFailure, UserToken> failureOrSuccess =
    //     left(const AuthFailure.invalidFields());

    final isEmailAddressValid = state.emailAddress.isValid();

    if (isEmailAddressValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final Either<AuthFailure, Unit> failureOrSuccess = await forwardedCall({
        'email': state.emailAddress.getOrCrash(),
      });
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    } else {
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: none(),
      );
    }
    // yield state.copyWith(
    //   isSubmitting: false,
    //   showErrorMessages: true,
    //   authFailureOrSuccessOption: optionOf(failureOrSuccess),
    // );
  }
}
