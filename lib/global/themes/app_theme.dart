import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_setup/global/utils/app_colors.dart';
import 'package:flutter_project_setup/global/utils/size_config.dart';

class CustomAppTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: TextStyle(
      fontSize: getProportionateScreenWidth(30),
      color: Colors.black,
      // fontFamily: FontFamily.oktaNeue,
    ),
    headline2: TextStyle(
      fontSize: getProportionateScreenWidth(24),
      // fontWeight: FontWeight.w700,
      color: Colors.black,
      // fontFamily: FontFamily.oktaNeue,
    ),
    headline3: TextStyle(
      fontSize: getProportionateScreenWidth(20),
      fontWeight: FontWeight.w300,
      color: Colors.black,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline4: TextStyle(
      fontSize: getProportionateScreenWidth(18),
      fontWeight: FontWeight.w300,
      color: Colors.black,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline5: TextStyle(
      fontSize: getProportionateScreenWidth(16),
      fontWeight: FontWeight.w300,
      color: Colors.black,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline6: TextStyle(
      fontSize: getProportionateScreenWidth(12),
      fontWeight: FontWeight.w300,
      color: Colors.black,
      // fontFamily: FontFamily.montserratregular,
    ),
    bodyText1: TextStyle(
      fontSize: getProportionateScreenWidth(18.0),
      color: Colors.black,
      // fontFamily: FontFamily.oktaNeue,
    ),
    bodyText2: TextStyle(
      fontSize: getProportionateScreenWidth(12.0),
      // fontWeight: FontWeight.bold,
      color: Colors.black,
      // fontFamily: FontFamily.oktaNeue,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: TextStyle(
      fontSize: getProportionateScreenWidth(30),
      color: Colors.white,
      // fontFamily: FontFamily.oktaNeue,
    ),
    headline2: TextStyle(
      fontSize: getProportionateScreenWidth(24),
      color: Colors.white,
      // fontFamily: FontFamily.oktaNeue,
    ),
    headline3: TextStyle(
      fontSize: getProportionateScreenWidth(20),
      fontWeight: FontWeight.w300,
      color: Colors.white,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline4: TextStyle(
      fontSize: getProportionateScreenWidth(18),
      fontWeight: FontWeight.w300,
      color: Colors.white,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline5: TextStyle(
      fontSize: getProportionateScreenWidth(16),
      fontWeight: FontWeight.w300,
      color: Colors.white,
      // fontFamily: FontFamily.montserratregular,
    ),
    headline6: TextStyle(
      fontSize: getProportionateScreenWidth(12),
      fontWeight: FontWeight.w300,
      color: Colors.white,
      // fontFamily: FontFamily.montserratregular,
    ),
    bodyText1: TextStyle(
      fontSize: getProportionateScreenWidth(18.0),
      color: Colors.white,
      // fontFamily: FontFamily.oktaNeue,
    ),
    bodyText2: TextStyle(
      fontSize: getProportionateScreenWidth(12.0),
      // fontWeight: FontWeight.bold,
      color: Colors.white,
      // fontFamily: FontFamily.oktaNeue,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // fontFamily: FontFamily.montserratregular,
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: Color(0x001E242B),
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      // backgroundColor: AppColors.kWhite,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // selectedItemColor: AppColors.kWhite,
        ),
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: AppColors.kBlack,
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // fontFamily: 'Montserratregular',
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          return Colors.black;
        },
      ),
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: AppColors.kWhite,
      // backgroundColor: AppColors.kWhite,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // selectedItemColor: AppColors.kWhite,
        ),
    textTheme: lightTextTheme,
    scaffoldBackgroundColor: AppColors.kWhite,
  );
}
