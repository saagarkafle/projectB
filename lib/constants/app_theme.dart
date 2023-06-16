// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final _textTheme = TextTheme(
    headline1: GoogleFonts.sourceSansPro(
        fontSize: 105, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.sourceSansPro(
        fontSize: 66, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3:
        GoogleFonts.sourceSansPro(fontSize: 52, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.sourceSansPro(
        fontSize: 37, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5:
        GoogleFonts.sourceSansPro(fontSize: 26, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.sourceSansPro(
        fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.sourceSansPro(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.sourceSansPro(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.notoSans(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.notoSans(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.notoSans(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.notoSans(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.notoSans(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );

  static final lightTheme = ThemeData(
    primaryColor: const Color(0xff673ab7),
    primaryColorDark: const Color(0xff673ab7),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: const Color(0xffe040fb),
      tertiary: Colors.grey.shade100,
    ),
    textTheme: _textTheme,
    iconTheme: IconThemeData(color: Colors.grey.shade900),
  );

  static final darkTheme = ThemeData(
      primaryColor: Colors.grey.shade900,
      primaryColorDark: const Color(0xff673ab7),
      scaffoldBackgroundColor: Colors.grey.shade900,
      colorScheme: ColorScheme.dark(
        secondary: const Color(0xffe040fb),
        tertiary: Colors.grey.shade800,
      ),
      textTheme: _textTheme,
      iconTheme: const IconThemeData(color: Colors.white));

  static Map<String, ThemeMode> modeToThemeMapper = {
    'light': ThemeMode.light,
    'dark': ThemeMode.dark,
    'system': ThemeMode.system
  };
}
