import 'package:flutter/material.dart';
import 'package:login_cubit/core/utils/colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.primaryColor,
      ),
    );
  }
}