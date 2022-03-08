import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/auth/registration/registration_bloc.dart';
import 'package:tech_in_church/application/auth/sign_in/sign_in_bloc.dart';
import 'package:tech_in_church/application/update_password/update_password_bloc.dart';
import 'package:tech_in_church/application/update_profile/update_profile_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/date_field.dart';
import 'package:tech_in_church/presentation/core/components/dropdown.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class UpdatePasswordForm extends HookWidget {
  UpdatePasswordForm({Key? key}) : super(key: key);

  final genderList = ['Male', 'Female'];
  final userTypeList = ['Member', 'Guest'];
  final picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final passwordVisible = useState(false);
    final ValueNotifier<String?> photo = useState(null);

    return BlocConsumer<UpdatePasswordBloc, UpdatePasswordState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                NotificationHelper.showError(
                  context,
                  failure.maybeMap(
                      serverError: (_) => 'An error occured. Please try again.',
                      noNetwork: (_) => 'Please check your internet connection',
                      orElse: () => 'An error'),
                );
                // FlushbarHelper.createError(
                //   message: failure.maybeMap(
                //       serverError: (_) => 'An error occured. Please try again.',
                //       noNetwork: (_) => 'Please check your internet connection',
                //       orElse: () => 'An error'),
                // ).show(context);
              },
              (_) {
                _formKey.currentState!.reset();
                NotificationHelper.showInfo(
                    context, 'Password Updated Successfully');
                // FlushbarHelper.createInformation(message: 'Password Updated Successfully').show(context);
                //context.router.push(HomeRoute());
                // ExtendedNavigator.of(context).push(Routes.homePage);
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
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
                    'Update Password',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: AppColors.appColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                const SizedBox(
                  height: 30,
                ),
                TextInput(
                  obscureText: true,
                  enabled: !state.isSubmitting,
                  title: 'Current Password',
                  textInputaction: TextInputAction.next,
                  showError: !state.currentPassword.isValid(),
                  onChanged: (value) {
                    context.read<UpdatePasswordBloc>().add(
                        UpdatePasswordEvent.currentPasswordChanged(
                            value ?? ''));
                  },
                  validator: (_) => context
                      .read<UpdatePasswordBloc>()
                      .state
                      .currentPassword
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
                  enabled: !state.isSubmitting,
                  title: 'Password',
                  textInputaction: TextInputAction.next,
                  showError: !state.password.isValid(),
                  onChanged: (value) {
                    context
                        .read<UpdatePasswordBloc>()
                        .add(UpdatePasswordEvent.passwordChanged(value ?? ''));
                  },
                  validator: (_) => context
                      .read<UpdatePasswordBloc>()
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
                  onChanged: (value) => context.read<UpdatePasswordBloc>().add(
                      UpdatePasswordEvent.confirmPasswordChanged(value ?? '')),
                  onSubmit: (v) {
                    final mask = context.read<AuthBloc>().state.maybeMap(
                        authenticated: (e) => e.usertoken.user.mask,
                        orElse: () => null);
                    context.read<UpdatePasswordBloc>().add(UpdatePasswordEvent
                        .registerWithEmailAndPasswordPressed());
                  },
                  validator: (_) => context
                      .read<UpdatePasswordBloc>()
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
                            final mask = context
                                .read<AuthBloc>()
                                .state
                                .maybeMap(
                                    authenticated: (e) => e.usertoken.user.mask,
                                    orElse: () => null);
                            context.read<UpdatePasswordBloc>().add(
                                UpdatePasswordEvent
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
                            'Update Password',
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
