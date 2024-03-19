import 'package:flutter/material.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class OutlineButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const OutlineButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.white,
            border: Border.all(width: 1.3, color: Color(0xffEBEBEB))),
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: appWidth - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTheme.bodyMediumLightTextStyle,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 19,
              color: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
