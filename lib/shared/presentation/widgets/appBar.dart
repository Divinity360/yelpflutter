import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String text;
  final bool showBackBtn;

  CustomAppBar({Key? key, required this.text, this.showBackBtn = false})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: widget.showBackBtn
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColors.black,
                ),
                onPressed: () => Navigator.of(context).pop())
            : SizedBox.shrink(),
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          widget.text,
          style: AppTheme.appBarTextStyle,
        ));
  }
}
