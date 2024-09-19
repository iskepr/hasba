import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Color(0xFF00E136),
    secondary: Colors.black,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: Color(0xFF00E136),
    onSurface: Colors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  dividerColor: Colors.black,
  iconTheme: IconThemeData(color: Colors.black),
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  fontFamily: 'IBM',
);
ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.black,
    onPrimary: Color(0xFF111111),
    secondary: Colors.white,
    onSecondary: Colors.grey,
    error: Colors.red,
    onError: Colors.white,
    surface: Color(0xFF1f1f1f),
    onSurface: Colors.black,
  ),
  scaffoldBackgroundColor: Color(0xFF111111),
  dividerColor: Colors.grey,
  iconTheme: IconThemeData(color: Colors.white),
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  appBarTheme: AppBarTheme(backgroundColor: Color(0xFF111111)),
  fontFamily: 'IBM',
);
