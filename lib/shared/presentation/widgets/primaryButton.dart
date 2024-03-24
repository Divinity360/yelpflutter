import 'package:flutter/material.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool disabled;

  const PrimaryButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    return  InkWell(
            onTap: disabled ? null : onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: disabled ? AppColors.primaryColor.withOpacity(.4) : AppColors.primaryColor ,
              ),
              height: 50,
              width: appWidth - 40,
              child: Center(
                child: Text(
                  text,
                  style: AppTheme.bodyMediumTextStyle,
                ),
              ),
            ),
          );
  }
}
