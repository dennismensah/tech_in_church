import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/application/auth/sign_in/sign_in_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/pages/auth/widgets/sign_in_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class SignInPage extends HookWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/pray.jpeg',
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0.15.sh,
              left: 10,
              right: 10,
              bottom: 30,
              child: Container(
                width: 1.sw,
                height: 0.83.sh,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 5.0, offset: Offset(0.3, 0.7))
                    ]),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SignInForm(),
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 5,
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () => context.router.pop()),
            ),
          ],
        ),
      ),
    );
  }
}
