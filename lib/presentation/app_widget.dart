import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/auth/validate_subdomain/validate_subdomain_bloc.dart';
import 'package:tech_in_church/application/home/home_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/images.dart';
import 'package:tech_in_church/presentation/core/theme.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(AppImages.logo), context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<ValidateSubdomainBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<HomeBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: () => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          title: 'TIC',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
