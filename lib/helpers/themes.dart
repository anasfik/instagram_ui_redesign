import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
    primaryColor: AppColors.black,
    backgroundColor: AppColors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      backgroundColor: AppColors.white,
    ),
    textTheme: GoogleFonts.archivoTextTheme().copyWith(
      headline6: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),
      subtitle1: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w300,
        fontSize: 13,
      ),
      headline4: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w300,
        fontSize: 13,
      ),
      headline1: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      headline3: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
      
    ),
  );
}
