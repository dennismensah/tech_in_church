import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:  const BoxDecoration(
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
                        Color.fromRGBO(152,97,35, 1),
                        Color.fromRGBO(237,195,124, 1),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Welcome to TIC',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontSize: 22.sp,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: Column(
              children: [
                SizedBox(
                  width: 1.sw,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.push(const SignInRoute());
                    },
                    child: Text(
                      'Sign In',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: AppColors.white),
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
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => AppColors.white,
                      ),
                      textStyle: MaterialStateProperty.resolveWith(
                        (states) => Theme.of(context).textTheme.subtitle1?.copyWith(color: AppColors.appColor)
                      ),
                    ),
                    onPressed: () {
                      context.router.push(const RegisterRoute());
                    },
                    child: Text(
                      'Register',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
