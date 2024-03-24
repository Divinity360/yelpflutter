import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/utils/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData buildThemeData() {
    var baseTheme = ThemeData();
    return baseTheme.copyWith(
      textTheme: GoogleFonts.dmSansTextTheme(baseTheme.textTheme),
      unselectedWidgetColor: AppColors.darkGreen.withOpacity(0.7),
      primaryColor: AppColors.darkGreen,

    );
  }

  static final TextStyle displayLargeTextStyle = GoogleFonts.dmSans(
      fontWeight: FontWeight.w700, fontSize: 30, color: AppColors.black);

  static final TextStyle bodyMediumTextStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 15, color: AppColors.white);

  static final TextStyle bodyMediumLightTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.darkGreen);

  static final TextStyle radioItemTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.darkGreen);

  static final TextStyle bodySmallTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 12.6, color: AppColors.black.withOpacity(.6));

  static final TextStyle bodySmallBoldTextStyle = TextStyle(
      fontWeight: FontWeight.w800, fontSize: 11.6, color: AppColors.black);

  static final TextStyle bodySmallExtraBoldTextStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 12.6, color: AppColors.darkGreen);

  static final TextStyle appBarTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.darkGreen);

  static final TextStyle chartTextStyle = TextStyle(
      color: AppColors.darkGreen, fontSize: 10.5, fontWeight: FontWeight.w700);
}
