import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/facebook_user.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@Injectable()
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;
  SignInBloc(this._authRepository) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthRepositoryWithEmailAndPassword(
          _authRepository.signInWithEmailAndPassword,
        );
      },
      signInWithFacebookPressed: (SignInWithFacebookPressed value) async* {
        final userOption = await _authRepository.signInWithFacebook();
        yield state.copyWith(
          authFailureOrSuccessOption: some(userOption),
        );
      },
      signInWithGooglePressed: (SignInWithGooglePressed value) async* {
        final userOption = await _authRepository.signInWithGoogle();
        yield state.copyWith(
          authFailureOrSuccessOption: some(userOption),
        );
      },
      signInWithApplePressed: (SignInWithApplePressed value) async* {
        final userOption = await _authRepository.signInWithApple();
        yield state.copyWith(
          authFailureOrSuccessOption: some(userOption),
        );
      },
    );
  }

  Stream<SignInState> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, UserToken>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final Either<AuthFailure, UserToken> failureOrSuccess =
          await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
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
  }
}
