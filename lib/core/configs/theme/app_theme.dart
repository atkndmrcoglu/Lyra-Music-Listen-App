import 'package:flutter/material.dart';
import 'package:lyra/core/configs/theme/app_colors.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    primaryColor: LyraColors.primary,
    scaffoldBackgroundColor: LyraColors.lightBackground,
    brightness: Brightness.light ,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: LyraColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    )
  );

  static final darkTheme = ThemeData(
    primaryColor: LyraColors.accentCyan,
    scaffoldBackgroundColor: LyraColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: LyraColors.accentCyan,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    )
  );
}