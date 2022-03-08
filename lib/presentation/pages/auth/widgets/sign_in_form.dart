import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/auth/sign_in/sign_in_bloc.dart';
import 'package:tech_in_church/application/home/home_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class SignInForm extends HookWidget {
  const SignInForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final passwordVisible = useState(false);
    final mainview = useState(true);
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                NotificationHelper.showError(
                  context,
                  failure.maybeMap(
                      serverError: (_) => 'An error occured. Please try again',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                      noNetwork: (_) => 'Please check your internet connection',
                      orElse: () => 'An error occured. Please try again'),
                );
                // FlushbarHelper.createError(
                //   message: failure.maybeMap(
                //       serverError: (_) => 'An error occured. Please try again',
                //       invalidEmailAndPasswordCombination: (_) =>
                //           'Invalid email and password combination',
                //       noNetwork: (_) => 'Please check your internet connection',
                //       orElse: () => 'An error occured. Please try again'),
                // ).show(context);
              },
              (_) {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.homeItemsFetched());
                context.router.replace(const HomeRoute());
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
                    'Sign In',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: AppColors.appColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                const SizedBox(
                  height: 30,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'Email',
                  showError: !state.emailAddress.isValid(),
                  textInputaction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.emailChanged(value ?? '')),
                  suffix: Icon(Icons.email),
                  validator: (_) =>
                      context.read<SignInBloc>().state.emailAddress.value.fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => '* Invalid email',
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
                  title: 'Password',
                  obscureText: !passwordVisible.value,
                  showError: !state.password.isValid(),
                  suffix: GestureDetector(
                    onTap: () {
                      passwordVisible.value = !passwordVisible.value;
                    },
                    child: Icon(passwordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off_rounded),
                  ),
                  textInputaction: TextInputAction.go,
                  onChanged: (value) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.passwordChanged(value ?? '')),
                  onSubmit: (v) {
                    context.read<SignInBloc>().add(
                        const SignInEvent.signInWithEmailAndPasswordPressed());
                  },
                  validator: (_) =>
                      context.read<SignInBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => '* Short password',
                              fieldEmpty: (_) => Strings.requiredError,
                              orElse: () => '',
                            ),
                            (_) => null,
                          ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.resolveWith(
                          (states) => const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.router.push(const ForgotPasswordRoute());
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appColor),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     context.router.push(const ForgotPasswordRoute());
                    //   },
                    //   child: Text(
                    //     'Forgot Password ?',
                    //     style: TextStyle(
                    //         fontSize: 14.sp,
                    //         fontWeight: FontWeight.bold,
                    //         color: AppColors.appColor),
                    //   ),
                    // ),
                  ],
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
                            context.read<SignInBloc>().add(const SignInEvent
                                .signInWithEmailAndPasswordPressed());
                          },
                    child: state.isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ))
                        : Text(
                            'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: AppColors.white),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'or sign in with',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<SignInBloc>()
                              .add(SignInEvent.signInWithGooglePressed());
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.google),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<SignInBloc>()
                              .add(SignInEvent.signInWithFacebookPressed());
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue,
                          ),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Facebook',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 15,
                    // ),
                    // Expanded(
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       context
                    //           .read<SignInBloc>()
                    //           .add(SignInEvent.signInWithApplePressed());
                    //     },
                    //     child: Container(
                    //       padding: EdgeInsets.all(15),
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(40),
                    //         color: Colors.blue,
                    //       ),
                    //       child: Row(
                    //         children: [
                    //           FaIcon(FontAwesomeIcons.apple),
                    //           // SizedBox(
                    //           //   width: 10,
                    //           // ),
                    //           // Text(
                    //           //   'Apple',
                    //           //   style: Theme.of(context)
                    //           //       .textTheme
                    //           //       .subtitle1
                    //           //       ?.copyWith(color: Colors.white),
                    //           // ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
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
