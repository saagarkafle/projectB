import 'package:flutter/material.dart';

class ThemeClass {
  static Color light = const Color(0xffF3F3F3);
  static Color dark = const Color.fromARGB(255, 0, 0, 0);
  static Color light1 = const Color.fromARGB(255, 143, 140, 140);
  static Color dark1 = const Color.fromARGB(255, 32, 32, 32);

  static ThemeData lightTheme = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      colorScheme: const ColorScheme.light().copyWith(
        primary: light,
        secondary: light1,
        
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: ThemeData.dark().scaffoldBackgroundColor,
      colorScheme: const ColorScheme.light().copyWith(
        primary: dark,
        secondary: dark1,
      ));
}

// ThemeClass _themeClass = ThemeClass();
