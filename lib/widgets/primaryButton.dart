import 'package:flutter/material.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const PrimaryButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primaryColor,
        ),
        height: 50,
        width: appWidth - 40,
        child: Center(child: Text(
          text,
          style: AppTheme.bodyMediumTextStyle,
        ),) ,
      ),
    );
  }
}
