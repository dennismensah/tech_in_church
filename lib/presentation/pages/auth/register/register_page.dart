import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/auth/registration/registration_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/pages/auth/widgets/register_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegistrationBloc>(),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    decoration: BoxDecoration(
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
              bottom: 10,
              child: Container(
                width: 1.sw,
                // height: 0.83.sh,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 5.0, offset: Offset(0.3, 0.7))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:  RegisterForm(),
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 5,
              child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: ()=>context.router.pop()),
            ),
          ],
        ),
      ),
    );
  }
}

