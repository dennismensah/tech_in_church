import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/application/auth/validate_subdomain/validate_subdomain_bloc.dart';
import 'package:tech_in_church/config.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

import '../../../injection.dart';

class SubdomainPage extends HookWidget {
  final _formKey = GlobalKey<FormState>();

  void saveSubdomain(BuildContext context, String text) {
    final hive = getIt<HiveInterface>();
    final box = hive.box<String>('subdomain');
    box.add(text);
    context.router.replace(const LandingRoute());
  }

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    // final isLoading = useState(false);
    return BlocConsumer<ValidateSubdomainBloc, ValidateSubdomainState>(
      listener: (context, state) {
        // isLoading.value = false;
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold((failure) {
              NotificationHelper.showError(
                context,
                failure.maybeMap(
                    serverError: (_) => 'Please enter a valid subdomain',
                    noNetwork: (_) => 'Please check your internet connection',
                    orElse: () => 'An error occured. Please try again'),
              );
            }, (_) {
              if (_formKey.currentState!.validate()) {
                saveSubdomain(context, controller.text);
              }
            });
          },
        );
      },
      builder:(context,state) => Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/splash.png',
                  ),
                  fit: BoxFit.fill,
                  // alignment: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 90,
              bottom: 30,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 180,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(152, 97, 35, 1),
                          Color.fromRGBO(237, 195, 124, 1),
                        ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello !!',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Please enter your church id',
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller,
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp("[0-9a-z]"))
                          ],
                          style: Theme.of(context).textTheme.subtitle1,
                          textInputAction: TextInputAction.go,
                          validator: (v) {
                            if (v != null) {
                              if (v.isEmpty) {
                                return '* Please enter your church id';
                              }
                              return null;
                            }
                            return null;
                          },
                          onFieldSubmitted: (v) {
                            if (_formKey.currentState!.validate()) {
                              // isLoading.value = true;
                              context.read<ValidateSubdomainBloc>().add(
                                  ValidateSubdomainEvent.subdomainValidated(
                                      controller.text));
                            }
                          },
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Church Id',
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: AppColors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: AppColors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: AppColors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: AppColors.white),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: AppColors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: 1.sw,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) => AppColors.white,
                              ),
                              textStyle: MaterialStateProperty.resolveWith(
                                  (states) => Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(color: AppColors.appColor)),
                            ),
                            onPressed: state.isSubmitting
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate()) {
                                      // isLoading.value = true;
                                      context.read<ValidateSubdomainBloc>().add(
                                          ValidateSubdomainEvent
                                              .subdomainValidated(
                                                  controller.text));
                                    }
                                  },
                            child: state.isSubmitting
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CupertinoActivityIndicator(
                                      radius: 17,
                                    ),
                                  )
                                : Text('Continue',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
