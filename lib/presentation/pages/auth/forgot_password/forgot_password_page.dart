import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/pages/auth/widgets/forgot_password_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Forgot Password'),
        // ),
        body:  Column(
          children: [
            Container(
              width: 1.sw,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13)),
                // color: Color.fromRGBO(0, 0, 139, 1),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.router.pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color.fromRGBO(0, 0, 139, 1),
                            size: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Recover Password',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Color.fromRGBO(0, 0, 139, 1)),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Expanded(child: const ForgotPasswordForm()),
          ],
        ),
        //const ForgotPasswordForm(),
      ),
    );
  }
}