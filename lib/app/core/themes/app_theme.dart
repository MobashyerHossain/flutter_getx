import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/core/themes/color_theme.dart';
import 'package:flutter_getx_pattern/app/core/themes/text_theme.dart';

class MyAppTheme {
  final lightTheme = ThemeData.light().copyWith(
    textTheme: MyTextTheme().darkText,
    primaryColor: MyColorTheme().lightPrimary,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: MyColorTheme().darkAccentColor,
      backgroundColor: MyColorTheme().lightAccentColor,
    ),
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      textTheme: MyTextTheme().darkText,
    ),
    bottomAppBarColor: MyColorTheme().lightPrimary,
    brightness: Brightness.light,
    colorScheme: MyColorTheme().lightColorScheme,
  );

  final darkTheme = ThemeData.dark().copyWith(
    textTheme: MyTextTheme().lightText,
    primaryColor: MyColorTheme().darkPrimary,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: MyColorTheme().lightAccentColor,
      backgroundColor: MyColorTheme().darkAccentColor,
    ),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      textTheme: MyTextTheme().lightText,
    ),
    bottomAppBarColor: MyColorTheme().darkPrimary,
    brightness: Brightness.dark,
    colorScheme: MyColorTheme().darkColorScheme,
  );
}
