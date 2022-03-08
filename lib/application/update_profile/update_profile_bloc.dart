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

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

@Injectable()
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final IProfileRepository _profileRepository;
  UpdateProfileBloc(this._profileRepository)
      : super(UpdateProfileState.initial());

  @override
  Stream<UpdateProfileState> mapEventToState(
    UpdateProfileEvent event,
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
      // passwordChanged: (e) async* {
      //   yield state.copyWith(
      //     password: Password(e.passwordStr),
      //     authFailureOrSuccessOption: none(),
      //   );
      // },
      // confirmPasswordChanged: (e) async* {
      //   yield state.copyWith(
      //     confirmPassword: ConfirmPassword(
      //         state.password.getOrCrash(), e.confirmPasswordStr),
      //     authFailureOrSuccessOption: none(),
      //   );
      // },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthRepositoryWithEmailAndPassword(
            _profileRepository.updateProfile, e.mask!);
      },
      profileImgChanged: (e) async* {
        yield state.copyWith(
          profileImg: e.profileImgStr,
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<UpdateProfileState> _performActionOnAuthRepositoryWithEmailAndPassword(
      Future<Either<AuthFailure, User>> Function(FormData data, String mask)
          forwardedCall,
      String mask) async* {
    // late Either<AuthFailure, UserToken> failureOrSuccess =
    //     left(const AuthFailure.invalidFields());

    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isGenderValid = state.gender.isValid();
    final isEmailAddressValid = state.emailAddress.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();
    final isTypeValid = state.type.isValid();
    final isDateOfBirthValid = state.dateOfBirth.isValid();
    // final isConfirmPasswordValid = state.confirmPassword.isValid();
    // final isPasswordValid = state.password.isValid();

    if (isFirstNameValid &&
            isLastNameValid &&
            isGenderValid &&
            isEmailAddressValid &&
            isPhoneNumberValid &&
            isTypeValid &&
            isDateOfBirthValid
        // isPasswordValid &&
        // isConfirmPasswordValid
        ) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final map = {
        'first_name': state.firstName.getOrCrash(),
        'last_name': state.lastName.getOrCrash(),
        'gender': state.gender.getOrCrash(),
        'email': state.emailAddress.getOrCrash(),
        'telephone_number': state.phoneNumber.getOrCrash(),
        'type': state.type.getOrCrash() == 'Guest' ? 1 : 0,
        'dob': state.dateOfBirth.getOrCrash(),
      };
      if (state.profileImg != null && state.profileImg != "null" && !state.profileImg!.contains('https://')) {
        map['profile_image'] = await MultipartFile.fromFile(state.profileImg!,
            filename: 'profile_image.png');
      }
      final data = FormData.fromMap(map);
      final Either<AuthFailure, User> failureOrSuccess =
          await forwardedCall(data, mask);
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
