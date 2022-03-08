import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/text.dart';

ThemeData appTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline3: base.headline3?.copyWith(
        fontFamily: 'Raleway'
      ),
      headline5: base.headline5?.copyWith(
          fontFamily: 'Raleway'
      ),
      headline6: base.headline6?.copyWith(
          fontFamily: 'Raleway'
      ),
      subtitle1: base.subtitle1?.copyWith(
          fontFamily: 'Raleway',
        fontSize: 18.sp
      ),
      subtitle2: base.subtitle2?.copyWith(
          fontFamily: 'Raleway'
      ),
      bodyText1: base.bodyText1?.copyWith(
          fontFamily: 'Raleway'
      ),
      bodyText2: base.bodyText2?.copyWith(
          fontFamily: 'Raleway'
      ),
      // headline1: base.headline1?.copyWith(
      //   fontSize: 19.sp,
      //   fontWeight: FontWeight.bold,
      //   fontFamily: 'Fugue',
      //   color: Colors.black,
      // ),
      // headline6: base.headline6?.copyWith(
      //   fontSize: 14.sp,
      //   fontFamily: 'Fugue',
      // ),
      // bodyText2: base.bodyText2?.copyWith(
      //   fontSize: 15.sp,
      //   fontFamily: 'Fugue',
      //   color: Colors.black,
      // ),
      // headline4: base.headline4?.copyWith(
      //   fontSize: 18.0,
      //   fontFamily: 'Fugue',
      //   color: Colors.deepPurple[600],
      // ),
      // headline5: base.headline5?.copyWith(
      //   fontSize: 16.0,
      //   fontFamily: 'Fugue',
      //   color: Colors.deepPurple[50],
      // ),
      // caption: base.headline5?.copyWith(
      //   fontSize: 12.0,
      //   fontFamily: 'Fugue',
      // ),
      // bodyText1: base.bodyText1?.copyWith(
      //   color: Colors.black,
      //   fontSize: 16.sp,
      // ),
      // subtitle1: base.subtitle1?.copyWith(
      //   color: Colors.black,
      //   fontSize: 16.sp,
      // ),
      // subtitle2: base.subtitle2?.copyWith(
      //   color: Colors.black,
      //   fontSize: 14.sp,
      // ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 2,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: AppColors.appColor,
          // fontFamily: Strings.fugueFont,
          fontSize: 21.sp,
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.appColor),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromRGBO(65, 29, 75, 1),
      // selectionColor: Color.fromRGBO(65, 29, 75, 1),
      selectionHandleColor: Color.fromRGBO(65, 29, 75, 1),
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: AppColors.appColor,
    accentColor: const Color.fromRGBO(65, 29, 75, 1).withOpacity(0.6),
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 20.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(18.0)),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) =>  AppColors.appColor,
        ),
        
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => TextStyle(fontSize: 20.sp),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(18.0)),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(color: Colors.white /*Color.fromRGBO(65, 29, 75, 1)*/,),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => TextStyle(fontSize: 20.sp,color: const Color.fromRGBO(65, 29, 75, 1),),
        ),
      ),
    ),
  );
}
