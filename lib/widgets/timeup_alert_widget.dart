import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/widgets/primaryButton.dart';

class TimeUpAlertWidget extends StatelessWidget {
final int minutes;
  const TimeUpAlertWidget({Key? key, required this.minutes,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffE9F5EA),
      ),

      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 15, bottom: 80), child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(child: Icon(
                Icons.close,
                size: 25,
                color: AppColors.darkGreen,
              ), onTap: ()=> Navigator.of(context).pop()
                ,)
            ],
          ),)
          ,
          Text(
            "Times up! Let's go out now!",
            style: AppTheme.bodySmallExtraBoldTextStyle,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 45),
            child: Text(
              "You have spend $minutes mins scrolling feed. Let's find a trail pal or event for you to go out.",
              style: AppTheme.bodySmallBoldTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            child: Text(
              'Remind me later',
              style: AppTheme.bodyMediumLightTextStyle
                  .copyWith(color: Color(0xff37AC5D)),
              textAlign: TextAlign.center,
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}