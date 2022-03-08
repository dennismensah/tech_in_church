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
import 'package:tech_in_church/application/update_profile/update_profile_bloc.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/date_field.dart';
import 'package:tech_in_church/presentation/core/components/dropdown.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class UpdateProfileForm extends HookWidget {
  UpdateProfileForm({Key? key}) : super(key: key);

  final genderList = ['Male', 'Female'];
  final userTypeList = ['Member', 'Guest'];
  final picker = ImagePicker();

  void showImageSelectorBottomSheet(
      BuildContext context, ValueNotifier<String?> photo) {
    showModalBottomSheet(
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
                          context.read<UpdateProfileBloc>().add(
                              UpdateProfileEvent.profileImgChanged(
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
                          context.read<UpdateProfileBloc>().add(
                              UpdateProfileEvent.profileImgChanged(
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
                // Row(
                //   // crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     const SizedBox(
                //       height: 2,
                //     ),
                //     Column(
                //       children: [
                //         GestureDetector(
                //           onTap: () async {
                //             context.router.pop();
                //             final pickedFile = await picker.getImage(
                //                 source: ImageSource.camera);
                //
                //             if (pickedFile != null) {
                //               photo.value = pickedFile.path;
                //               context.read<UpdateProfileBloc>().add(
                //                   UpdateProfileEvent.profileImgChanged(
                //                       photo.value!));
                //             } else {
                //               print('No image selected.');
                //             }
                //           },
                //           child: CircleAvatar(
                //             radius: 30,
                //             backgroundColor: Colors.grey.shade200,
                //             child: Icon(
                //               Icons.camera,
                //               size: 30,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         Text(
                //           'Camera',
                //           style: Theme.of(context).textTheme.subtitle1,
                //         ),
                //       ],
                //     ),
                //     const SizedBox(
                //       width: 20,
                //     ),
                //     Column(
                //       children: [
                //         GestureDetector(
                //           onTap: () async {
                //             context.router.pop();
                //             final pickedFile = await picker.getImage(
                //                 source: ImageSource.gallery);
                //
                //             if (pickedFile != null) {
                //               photo.value = pickedFile.path;
                //               context.read<UpdateProfileBloc>().add(
                //                   UpdateProfileEvent.profileImgChanged(
                //                       photo.value!));
                //             } else {
                //               print('No image selected.');
                //             }
                //           },
                //           child: CircleAvatar(
                //             radius: 30,
                //             backgroundColor: Colors.grey.shade200,
                //             child: Icon(
                //               Icons.photo_library,
                //               size: 30,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         Text(
                //           'Gallery',
                //           style: Theme.of(context).textTheme.subtitle1,
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getProfileImage(ValueNotifier<User?> user, ValueNotifier<String?> photo) {
    return (user.value!.image == null || user.value!.image!.isEmpty)
        ? (photo.value == null
            ? const AssetImage('assets/images/pers.png')
            : FileImage(File(photo.value!)))
        : NetworkImage(user.value?.image ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final passwordVisible = useState(false);
    final ValueNotifier<String?> photo = useState(null);
    final authBloc = context.read<AuthBloc>();
    final updateProfileBloc = context.read<UpdateProfileBloc>();
    final user = useState<User?>(null);
    useEffect(
      () {
        authBloc.state.maybeMap(
            authenticated: (e) {
              user.value = e.usertoken.user;
              updateProfileBloc
                ..add(UpdateProfileEvent.firstNameChanged(
                    user.value?.first_name ?? ''))
                ..add(UpdateProfileEvent.lastNameChanged(
                    user.value?.last_name ?? ''))
                ..add(UpdateProfileEvent.emailChanged(user.value?.email ?? ''))
                ..add(UpdateProfileEvent.phoneNumberChanged(
                    user.value?.telephone_number ?? ''))
                ..add(UpdateProfileEvent.dateOfBirthChanged(
                    user.value?.dob ?? ''))
                ..add(
                    UpdateProfileEvent.genderChanged(user.value?.gender ?? ''))
                ..add(UpdateProfileEvent.typeChanged(
                    user.value?.type.toString() ?? ''))
                ..add(UpdateProfileEvent.profileImgChanged(
                    user.value?.image.toString() ?? ''));
            },
            orElse: () {});
      },
      const [],
    );
    return BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
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
                NotificationHelper.showInfo(context,'Profile Updated Successfully');
                // FlushbarHelper.createInformation(
                //         message: 'Profile Updated Successfully')
                //     .show(context);
                //context.router.push(HomeRoute());
                // ExtendedNavigator.of(context).push(Routes.homePage);
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
                    'Update Profile',
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
                        // final pickedFile = await picker.getImage(
                        //     source: ImageSource.camera);
                        //
                        // if (pickedFile != null) {
                        //   photo.value = pickedFile.path;
                        //   context.read<UpdateProfileBloc>().add(
                        //       UpdateProfileEvent.profileImgChanged(
                        //           photo.value!));
                        // } else {
                        //   print('No image selected.');
                        // }
                      },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: getProfileImage(user, photo),
                        // (user.value!.image == null ||
                        //         user.value!.image.isEmpty)
                        //     ? (photo.value == null
                        //         ? AssetImage('assets/images/pers.png')
                        //         : FileImage(File(photo.value!)))
                        //     : NetworkImage(user.value!.image)

                        // context
                        //     .read<AuthBloc>()
                        //     .state
                        //     .maybeMap(
                        //         authenticated: (u) {
                        //           if (u.usertoken.user.image == null) {
                        //             if (photo.value == null) {
                        //               return const AssetImage(
                        //                   'assets/images/pers.png');
                        //             } else {
                        //               return FileImage(File(photo.value!));
                        //             }
                        //           } else {
                        //             return NetworkImage(
                        //                 u.usertoken.user.image!);
                        //           }
                        //         },
                        //         orElse: () =>
                        //             const AssetImage('assets/images/pers.png')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInput(
                  enabled: !state.isSubmitting,
                  title: 'First Name',
                  initialValue: user.value?.first_name,
                  textInputaction: TextInputAction.next,
                  showError: !state.firstName.isValid(),
                  onChanged: (value) => context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.firstNameChanged(value ?? '')),
                  validator: (_) => context
                      .read<UpdateProfileBloc>()
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
                  initialValue: user.value?.last_name,
                  textInputaction: TextInputAction.done,
                  showError: !state.lastName.isValid(),
                  onChanged: (value) => context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.lastNameChanged(value ?? '')),
                  validator: (_) => context
                      .read<UpdateProfileBloc>()
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
                  initialValue:
                      '${user.value?.gender.substring(0, 1).toUpperCase()}${user.value?.gender.substring(1)}',
                  showError: !state.gender.isValid(),
                  onUpdateBloc: (String? val) {
                    context
                        .read<UpdateProfileBloc>()
                        .add(UpdateProfileEvent.genderChanged(val ?? ''));
                  },
                  validator: (_) =>
                      context.read<UpdateProfileBloc>().state.gender.value.fold(
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
                  initialValue: user.value?.email,
                  textInputaction: TextInputAction.next,
                  showError: !state.emailAddress.isValid(),
                  onChanged: (value) => context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.emailChanged(value ?? '')),
                  validator: (_) => context
                      .read<UpdateProfileBloc>()
                      .state
                      .emailAddress
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
                  title: 'Phone Number',
                  hint: 'eg 0245678900',
                  maxlength: 10,
                  initialValue: user.value?.telephone_number,
                  textInputaction: TextInputAction.done,
                  showError: !state.phoneNumber.isValid(),
                  onChanged: (value) => context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.phoneNumberChanged(value ?? '')),
                  validator: (_) => context
                      .read<UpdateProfileBloc>()
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
                  initialValue: user.value?.type == 0 ? 'Member' : 'Guest',
                  showError: !state.type.isValid(),
                  onUpdateBloc: (String? val) {
                    context
                        .read<UpdateProfileBloc>()
                        .add(UpdateProfileEvent.typeChanged(val ?? ''));
                  },
                  validator: (_) =>
                      context.read<UpdateProfileBloc>().state.type.value.fold(
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
                  initialValue: user.value?.dob == null
                      ? null
                      : formatDate(DateTime.parse(user.value!.dob),
                          [dd, ' ', M, ' ', yyyy]),
                  next: true,
                  showError: !state.dateOfBirth.isValid(),
                  onUpdateBloc: (String? date) {
                    context
                        .read<UpdateProfileBloc>()
                        .add(UpdateProfileEvent.dateOfBirthChanged(date ?? ''));
                  },
                  validator: (_) => context
                      .read<UpdateProfileBloc>()
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
                // const SizedBox(
                //   height: 25,
                // ),
                // TextInput(
                //   obscureText: true,
                //   enabled: !state.isSubmitting,
                //   title: 'Password',
                //   textInputaction: TextInputAction.next,
                //   showError: !state.password.isValid(),
                //   onChanged: (value) {
                //     context.read<UpdateProfileBloc>().add(
                //         UpdateProfileEvent.passwordChanged(value ?? ''));
                //   },
                //   validator: (_) => context
                //       .read<UpdateProfileBloc>()
                //       .state
                //       .password
                //       .value
                //       .fold(
                //         (f) => f.maybeMap(
                //           fieldEmpty: (_) => Strings.requiredError,
                //           shortPassword: (_) =>
                //               '* Password length should be 6 or more characters',
                //           orElse: () => '',
                //         ),
                //         (_) => null,
                //       ),
                // ),
                // const SizedBox(
                //   height: 25,
                // ),
                // TextInput(
                //   obscureText: true,
                //   readonly:
                //       !(!state.isSubmitting && state.password.isValid()),
                //   title: 'Confirm Password',
                //   textInputaction: TextInputAction.go,
                //   showError: state.password.isValid() &&
                //       !state.confirmPassword.isValid(),
                //   onChanged: (value) => context
                //       .read<UpdateProfileBloc>()
                //       .add(UpdateProfileEvent.confirmPasswordChanged(
                //           value ?? '')),
                //   onSubmit: (v) {
                //     final mask = context.read<AuthBloc>().state.maybeMap(
                //         authenticated: (e) => e.usertoken.user.mask,
                //         orElse: () => null);
                //     context.read<UpdateProfileBloc>().add(
                //         UpdateProfileEvent
                //             .registerWithEmailAndPasswordPressed(mask));
                //   },
                //   validator: (_) => context
                //       .read<UpdateProfileBloc>()
                //       .state
                //       .confirmPassword
                //       .value
                //       .fold(
                //         (f) => f.maybeMap(
                //           nonMatchingPasswords: (_) =>
                //               '* Passwords do not match',
                //           fieldEmpty: (_) => Strings.requiredError,
                //           shortPassword: (_) =>
                //               '* Password length should be 6 or more characters',
                //           orElse: () => '',
                //         ),
                //         (_) => null,
                //       ),
                // ),
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
                            context.read<UpdateProfileBloc>().add(
                                UpdateProfileEvent
                                    .registerWithEmailAndPasswordPressed(mask));
                          },
                    child: state.isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ))
                        : Text(
                            'Update Profile',
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
