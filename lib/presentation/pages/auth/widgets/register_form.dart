import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/auth/registration/registration_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/date_field.dart';
import 'package:tech_in_church/presentation/core/components/dropdown.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:date_format/date_format.dart';

class RegisterForm extends HookWidget {
  RegisterForm({Key? key}) : super(key: key);

  final genderList = ['Male', 'Female'];
  final userTypeList = ['Member', 'Guest'];
  final picker = ImagePicker();

  void showImageSelectorBottomSheet(
      BuildContext context, ValueNotifier<String?> photo) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      context: context,
      builder: (_) => SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Select an image',
                //   style: Theme.of(context).textTheme.subtitle1,
                // ),
                const SizedBox(
                  height: 14,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    GestureDetector(
                      onTap: () async {
                        context.router.pop();
                        final pickedFile =
                            await picker.getImage(source: ImageSource.camera);

                        if (pickedFile != null) {
                          photo.value = pickedFile.path;
                          context.read<RegistrationBloc>().add(
                              RegistrationEvent.profileImgChanged(
                                  photo.value!));
                        } else {
                          print('No image selected.');
                        }
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade200,
                            child: const Icon(
                              Icons.camera,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Camera',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () async {
                        context.router.pop();
                        final pickedFile =
                            await picker.getImage(source: ImageSource.gallery);

                        if (pickedFile != null) {
                          photo.value = pickedFile.path;
                          context.read<RegistrationBloc>().add(
                              RegistrationEvent.profileImgChanged(
                                  photo.value!));
                        } else {
                          print('No image selected.');
                        }
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade200,
                            child: const Icon(
                              Icons.photo_library,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Gallery',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final passwordVisible = useState(false);
    final ValueNotifier<String?> photo = useState(null);
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                NotificationHelper.showError(
                  context,
                  failure.maybeMap(
                      userAlreadyExists: (_) =>
                          'The email you provided already exists',
                      serverError: (_) => 'An error occured. Please try again',
                      noNetwork: (_) => 'Please check your internet connection',
                      orElse: () => 'An error occured. Please try again'),
                );
                // FlushbarHelper.createError(
                //   message: failure.maybeMap(
                //       userAlreadyExists: (_) =>
                //           'The email you provided already exists',
                //       serverError: (_) => 'An error occured. Please try again',
                //       noNetwork: (_) => 'Please check your internet connection',
                //       orElse: () => 'An error occured. Please try again'),
                // ).show(context);
              },
              (_) {
                // ExtendedNavigator.of(context).replace(Routes.onboardingPage);
                // context
                //     .read<AuthBloc>()
                //     .add(const AuthEvent.authCheckRequested());
                context.router.replace(const OnboardingRoute());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: AppColors.appColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        showImageSelectorBottomSheet(context, photo);
                        // final pickedFile =
                        //     await picker.getImage(source: ImageSource.camera);
                        //
                        // if (pickedFile != null) {
                        //   photo.value = pickedFile.path;
                        //   context.read<RegistrationBloc>().add(
                        //       RegistrationEvent.profileImgChanged(
                        //           photo.value!));
                        // } else {
                        //   print('No image selected.');
                        // }
                      },
                      child: photo.value == null
                          ? const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 60,
                              backgroundImage:
                                  AssetImage('assets/images/pers.png'))
                          : CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 60,
                              backgroundImage: FileImage(File(photo.value!))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'First Name',
                  textInputaction: TextInputAction.next,
                  showError: !state.firstName.isValid(),
                  onChanged: (value) => context
                      .read<RegistrationBloc>()
                      .add(RegistrationEvent.firstNameChanged(value ?? '')),
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .firstName
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'Last Name',
                  textInputaction: TextInputAction.done,
                  showError: !state.lastName.isValid(),
                  onChanged: (value) => context
                      .read<RegistrationBloc>()
                      .add(RegistrationEvent.lastNameChanged(value ?? '')),
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .lastName
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Dropdown(
                  title: 'Gender',
                  items: genderList,
                  showError: !state.gender.isValid(),
                  onUpdateBloc: (String? val) {
                    context
                        .read<RegistrationBloc>()
                        .add(RegistrationEvent.genderChanged(val ?? ''));
                  },
                  validator: (_) =>
                      context.read<RegistrationBloc>().state.gender.value.fold(
                            (f) => f.maybeMap(
                              fieldEmpty: (_) => Strings.requiredError,
                              orElse: () => '',
                            ),
                            (_) => null,
                          ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'Email',
                  textInputaction: TextInputAction.next,
                  showError: !state.emailAddress.isValid(),
                  onChanged: (value) => context
                      .read<RegistrationBloc>()
                      .add(RegistrationEvent.emailChanged(value ?? '')),
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          invalidEmail: (_) => 'Please enter a valid email',
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'Phone Number',
                  maxlength: 10,
                  hint: 'eg (555) 555-1234',
                  textInputaction: TextInputAction.done,
                  showError: !state.phoneNumber.isValid(),
                  onChanged: (value) => context
                      .read<RegistrationBloc>()
                      .add(RegistrationEvent.phoneNumberChanged(value ?? '')),
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .phoneNumber
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Dropdown(
                  title: 'Type',
                  items: userTypeList,
                  showError: !state.type.isValid(),
                  onUpdateBloc: (String? val) {
                    context
                        .read<RegistrationBloc>()
                        .add(RegistrationEvent.typeChanged(val ?? ''));
                  },
                  validator: (_) =>
                      context.read<RegistrationBloc>().state.type.value.fold(
                            (f) => f.maybeMap(
                              fieldEmpty: (_) => Strings.requiredError,
                              orElse: () => '',
                            ),
                            (_) => null,
                          ),
                ),
                const SizedBox(
                  height: 25,
                ),
                DateInput(
                  title: 'Date Of Birth',
                  next: true,
                  showError: !state.dateOfBirth.isValid(),
                  onUpdateBloc: (String? date) {
                    context
                        .read<RegistrationBloc>()
                        .add(RegistrationEvent.dateOfBirthChanged(date ?? ''));
                  },
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .dateOfBirth
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInput(
                  obscureText: true,
                  enabled: !state.isSubmitting,
                  title: 'Password',
                  textInputaction: TextInputAction.next,
                  showError: !state.password.isValid(),
                  onChanged: (value) {
                    context
                        .read<RegistrationBloc>()
                        .add(RegistrationEvent.passwordChanged(value ?? ''));
                  },
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .password
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          fieldEmpty: (_) => Strings.requiredError,
                          shortPassword: (_) =>
                              '* Password length should be 6 or more characters',
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInput(
                  obscureText: true,
                  readonly: !(!state.isSubmitting && state.password.isValid()),
                  title: 'Confirm Password',
                  textInputaction: TextInputAction.go,
                  showError: state.password.isValid() &&
                      !state.confirmPassword.isValid(),
                  onChanged: (value) => context.read<RegistrationBloc>().add(
                      RegistrationEvent.confirmPasswordChanged(value ?? '')),
                  onSubmit: (v) {
                    context.read<RegistrationBloc>().add(const RegistrationEvent
                        .registerWithEmailAndPasswordPressed());
                  },
                  validator: (_) => context
                      .read<RegistrationBloc>()
                      .state
                      .confirmPassword
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          nonMatchingPasswords: (_) =>
                              '* Passwords do not match',
                          fieldEmpty: (_) => Strings.requiredError,
                          shortPassword: (_) =>
                              '* Password length should be 6 or more characters',
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 1.sw,
                  child: ElevatedButton(
                    onPressed: state.isSubmitting
                        ? null
                        : () {
                            context.read<RegistrationBloc>().add(
                                const RegistrationEvent
                                    .registerWithEmailAndPasswordPressed());
                          },
                    child: state.isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ))
                        : Text(
                            'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: AppColors.white),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
