import 'package:flutter/material.dart';

class myTheme {
  static Color lightprimary = Color(0xffB7935F);
  static Color colorblack = Color(0xff3F3F3F);
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
            color: Colors.green,
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
  static final ThemeData darkTheme = ThemeData();
}
