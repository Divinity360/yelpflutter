import 'package:flutter/material.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/features/signUp/presentation/mobile_reg/page/mobile_reg_view.dart';
import 'package:login_cubit/features/signUp/presentation/otpVerify/page/otp_ver_view.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.OTP_VERIFY_PAGE:
        return _getRoute(OTPVerifyPage());
      default:
        return _getRoute(MobileRegView());
    }
  }

  static Route<dynamic> _getRoute(Widget screenName) =>
      MaterialPageRoute(builder: (_) => screenName);
}
