import 'package:flutter/material.dart';

class Constants {
  // app name string
  static String appName = "Age Calculator";

  // theme color
  static Color lightPrimary = Color(0xfff2f3f7);
  static Color darkPrimary = Color(0xff121212);
  static Color lightAccent = Colors.brown;
  static Color darkAccent = Colors.brown;
  static Color lightBG = Color(0xfff2f3f7);
  static Color darkBG = Color(0xff191919);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
  );
}
