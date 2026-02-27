import 'package:flutter/material.dart';

class LyraColors {
  
  static const Color primary = Color(0xFF302B63);
  
  static const Color lightBackground = Color(0xffF2F2F2);

  static const Color darkBackground = Color(0xFF0F0C29);

  static const Color accentCyan = Color(0xFF24C6DC);
  static const Color darkGray = Color(0xff343434);
  static const Color lightGray = Color(0xffB3B3B3);
  
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF0F0C29),
      Color(0xFF302B63),
      Color(0xFF24C6DC),
    ],
  );
}