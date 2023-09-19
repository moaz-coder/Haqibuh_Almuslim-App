import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color mainTextlightColor = Color(0xFF242424);
  static const Color mainTextdarkColor = Color(0xFFF8F8F8);
  static const Color mainAccentColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: lightPrimaryColor),
    primaryColor: lightPrimaryColor,
    accentColor: lightPrimaryColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: mainTextlightColor,
        fontSize: 30,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
    textTheme: const TextTheme(
      headline3: TextStyle(color: mainTextlightColor, fontSize: 32),
      headline5: TextStyle(fontSize: 24, color: mainTextlightColor),
      bodyText1: TextStyle(fontSize: 24, color: mainTextlightColor),
      bodyText2: TextStyle(color: mainTextlightColor, fontSize: 20),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
  static var darkTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: mainAccentColor),
    primaryColor: darkPrimaryColor,
    accentColor: mainAccentColor,
    cardColor: darkPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: mainTextdarkColor,
        fontSize: 30,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: mainAccentColor, unselectedItemColor: Colors.white),
    textTheme: const TextTheme(
      headline3: TextStyle(color: mainTextdarkColor, fontSize: 32),
      headline5: TextStyle(fontSize: 24, color: mainTextdarkColor),
      bodyText1: TextStyle(fontSize: 24, color: mainTextdarkColor),
      bodyText2: TextStyle(color: mainTextdarkColor, fontSize: 20),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: darkPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
