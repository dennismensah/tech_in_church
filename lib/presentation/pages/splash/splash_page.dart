import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/home/home_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../injection.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        Future.delayed(const Duration(seconds: 2)).then((value){
          state.map(
            initial: (_) {},
            authenticated: (_) {
              context.read<HomeBloc>().add(const HomeEvent.homeItemsFetched());
              context.router.replace(const HomeRoute());
            },
            unauthenticated: (_) {
              final hive = getIt<HiveInterface>();
              final box = hive.box<String>('subdomain');
              if (box.isEmpty) {
                context.router.replace(const SubdomainRoute());
              } else {
                context.router.replace(const LandingRoute());
              }
            },
          );
        });
        // state.map(
        //   initial: (_) {},
        //   authenticated: (_) {
        //     context.read<HomeBloc>().add(const HomeEvent.homeItemsFetched());
        //     context.router.replace(const HomeRoute());
        //   },
        //   unauthenticated: (_) {
        //     final hive = getIt<HiveInterface>();
        //     final box = hive.box<String>('subdomain');
        //     if (box.isEmpty) {
        //       context.router.replace(const SubdomainRoute());
        //     } else {
        //       context.router.replace(const LandingRoute());
        //     }
        //   },
        // );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/splash.png',
                  ),
                  fit: BoxFit.fitHeight,
                  // alignment: Alignment.topCenter,
                ),
              ),
            ),
            // Positioned.fill(
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: SizedBox(
            //       height: 30,
            //       width: 30,
            //       child: const CircularProgressIndicator(
            //         backgroundColor: Colors.white,
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),

      //     Container(
      //   width: 1.sw,
      //   height: 1.sh,
      //   color: AppColors.appColor,
      //   child: const Center(
      //     child: SizedBox(
      //       height: 30,
      //       width: 30,
      //       child: CircularProgressIndicator(
      //         backgroundColor: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
