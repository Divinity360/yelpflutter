import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/utils/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData buildThemeData() {
    var baseTheme = ThemeData();
    return baseTheme.copyWith(
      textTheme: GoogleFonts.dmSansTextTheme(baseTheme.textTheme),
      unselectedWidgetColor: AppColors.darkGreen.withOpacity(0.7)
    );
  }

  static final TextStyle displayLargeTextStyle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.black);

  static final TextStyle bodyMediumTextStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.white);

  static final TextStyle bodyMediumLightTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.darkGreen);

  static final TextStyle radioItemTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 11, color: AppColors.darkGreen);

  static final TextStyle bodySmallTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 9.6, color: AppColors.black);

  static final TextStyle bodySmallBoldTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 11, color: AppColors.darkGreen);

  static final TextStyle bodySmallExtraBoldTextStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 10.6, color: AppColors.darkGreen);

  static final TextStyle appBarTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.darkGreen);

  static final TextStyle chartTextStyle = TextStyle(
      color: AppColors.darkGreen, fontSize: 8.5, fontWeight: FontWeight.w700);
}
