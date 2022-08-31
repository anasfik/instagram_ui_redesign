import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
    textTheme: GoogleFonts.archivoTextTheme().copyWith(
      headline6: TextStyle(
        color: AppColors.lightBackgroundColor,
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),
    ),
  );
}
