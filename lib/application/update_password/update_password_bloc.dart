import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';
import 'package:tech_in_church/domain/profile/i_profile_repository.dart';

part 'update_password_event.dart';
part 'update_password_state.dart';
part 'update_password_bloc.freezed.dart';

@Injectable()
class UpdatePasswordBloc
    extends Bloc<UpdatePasswordEvent, UpdatePasswordState> {
  final IProfileRepository _profileRepository;
  UpdatePasswordBloc(this._profileRepository)
      : super(UpdatePasswordState.initial());

  @override
  Stream<UpdatePasswordState> mapEventToState(
    UpdatePasswordEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: ConfirmPassword(
              state.password.getOrCrash(), e.confirmPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthRepositoryWithEmailAndPassword(
            _profileRepository.updatePassword);
      },
      currentPasswordChanged: (CurrentPasswordChanged e) async* {
        yield state.copyWith(
          currentPassword: Password(e.currentPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      // profileImgChanged: (e) async* {
      //   yield state.copyWith(
      //     profileImg: e.profileImgStr,
      //     authFailureOrSuccessOption: none(),
      //   );
      // },
    );
  }

  Stream<UpdatePasswordState>
      _performActionOnAuthRepositoryWithEmailAndPassword(
          Future<Either<AuthFailure, Unit>> Function(FormData data)
              forwardedCall) async* {
    // late Either<AuthFailure, UserToken> failureOrSuccess =
    //     left(const AuthFailure.invalidFields());

    final isConfirmPasswordValid = state.confirmPassword.isValid();
    final isPasswordValid = state.password.isValid();
    final isCurrentPasswordValid = state.currentPassword.isValid();

    if (isPasswordValid && isConfirmPasswordValid && isCurrentPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      var data = FormData.fromMap({
        'new_password': state.password.getOrCrash(),
        'current_password': state.currentPassword.getOrCrash(),
      });
      final Either<AuthFailure, Unit> failureOrSuccess =
          await forwardedCall(data);
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
