import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: AppColors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Row(
          children: [
            Icon(
              Icons.access_time,
              size: 26,
              color: AppColors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Time Spent on Feed',
                style: AppTheme.appBarTextStyle,
              ),
            )
          ],
        ));
  }
}
