import 'package:flutter/material.dart';

class myTheme {
  static Color lightprimary = Color(0xffB7935F);
  static Color colorblack = Color(0xff3F3F3F);
  static Color blueBlack = Color(0xff141A2E);
  static Color colorWhight = Color(0xffffffff);
  static Color colorYallow = Color(0xffFACC1D);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightprimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: colorblack,
          )),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            color: colorblack,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          subtitle1: TextStyle(
            fontSize: 15,
            color: colorblack,
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorblack,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData DarkTheme = ThemeData(
    primaryColor: blueBlack,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorWhight,
        )),
    textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          color: colorWhight,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 30,
          color: colorYallow,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 15,
          color: colorWhight,
          fontWeight: FontWeight.bold,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorYallow,
      unselectedItemColor: Colors.white,
    ),
  );
}
