import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class ForgotPasswordForm extends HookWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
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
                      emailNotAssociatedWithAnyAccount: (_) =>
                          'This email is not associated with any account',
                      orElse: () => 'An error occured'),
                );
                // FlushbarHelper.createError(
                //   message: failure.maybeMap(
                //       serverError: (_) => 'An error occured. Please try again.',
                //       noNetwork: (_) => 'Please check your internet connection',
                //       emailNotAssociatedWithAnyAccount: (_) =>
                //           'This email is not associated with any account',
                //       orElse: () => 'An error'),
                // ).show(context);
              },
              (_) async {
                final e = state.emailAddress.getOrCrash().split('@');
                NotificationHelper.showInfo(context,
                    'Your new password has been sent to xxxxxxxxxxkay@${e.last}');
                // FlushbarHelper.createSuccess(
                //         message:
                //             'Your new password has been sent to xxxxxxxxxxkay@${e.last}')
                //     .show(context);
                await context.router.replace(SignInRoute());
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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      TextInput(
                        enabled: !state.isSubmitting,
                        title: 'Email',
                        textInputaction: TextInputAction.go,
                        showError: !state.emailAddress.isValid(),
                        onChanged: (value) => context
                            .read<ForgotPasswordBloc>()
                            .add(ForgotPasswordEvent.emailChanged(value ?? '')),
                        suffix: const Icon(Icons.email),
                        onSubmit: (v) {
                          context.read<ForgotPasswordBloc>().add(
                              const ForgotPasswordEvent
                                  .forgotPasswordPressed());
                        },
                        validator: (_) => context
                            .read<ForgotPasswordBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => '* Invalid email',
                                fieldEmpty: (_) => Strings.requiredError,
                                orElse: () => '',
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 1.sw,
                        child: ElevatedButton(
                          onPressed: state.isSubmitting
                              ? null
                              : () {
                                  context.read<ForgotPasswordBloc>().add(
                                      const ForgotPasswordEvent
                                          .forgotPasswordPressed());
                                },
                          child: state.isSubmitting
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    backgroundColor: Colors.white,
                                  ))
                              : Text(
                                  'Submit',
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
              ),
            ],
          ),
        );
      },
    );
  }
}
