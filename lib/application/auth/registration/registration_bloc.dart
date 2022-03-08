import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@Injectable()
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthRepository _authRepository;
  RegistrationBloc(this._authRepository) : super(RegistrationState.initial());

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    yield* event.map(
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: RequiredField(e.firstNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: RequiredField(e.lastNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: RequiredField(e.genderStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      typeChanged: (e) async* {
        yield state.copyWith(
          type: RequiredField(e.typeStr),
          authFailureOrSuccessOption: none(),
        );
      },
      dateOfBirthChanged: (e) async* {
        yield state.copyWith(
          dateOfBirth: Date(e.dateOfBirthStr),
          authFailureOrSuccessOption: none(),
        );
      },
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
          _authRepository.register,
        );
      },
      profileImgChanged: (e) async* {
        yield state.copyWith(
          profileImg: e.profileImgStr,
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<RegistrationState> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, UserToken>> Function(FormData data)
        forwardedCall,
  ) async* {
    // late Either<AuthFailure, UserToken> failureOrSuccess =
    //     left(const AuthFailure.invalidFields());

    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isGenderValid = state.gender.isValid();
    final isEmailAddressValid = state.emailAddress.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();
    final isTypeValid = state.type.isValid();
    final isDateOfBirthValid = state.dateOfBirth.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();
    final isPasswordValid = state.password.isValid();

    if (isFirstNameValid &&
        isLastNameValid &&
        isGenderValid &&
        isEmailAddressValid &&
        isPhoneNumberValid &&
        isTypeValid &&
        isDateOfBirthValid &&
        isPasswordValid &&
        isConfirmPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      var data = FormData.fromMap({
        'first_name': state.firstName.getOrCrash(),
        'last_name': state.lastName.getOrCrash(),
        'gender': state.gender.getOrCrash(),
        'email': state.emailAddress.getOrCrash(),
        'telephone_number': state.phoneNumber.getOrCrash(),
        'type': state.type.getOrCrash()=='Guest'? 1:0,
        'dob': state.dateOfBirth.getOrCrash(),
        'password': state.password.getOrCrash(),
        'profile_image': state.profileImg==null? null: await MultipartFile.fromFile(
            state.profileImg!,
            filename: 'profile_image.png')
      });

      final Either<AuthFailure, UserToken> failureOrSuccess =
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
