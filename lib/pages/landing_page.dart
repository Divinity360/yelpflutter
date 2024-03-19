import 'package:flutter/material.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/widgets/primaryButton.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreenBkg,
      body: SafeArea(
        child: Center(
          child: Text(
            '1min 20s passed',
            style: AppTheme.displayLargeTextStyle,
          ),
        ),
      ),
      floatingActionButton: PrimaryButton(
        onTap: () {
          Navigator.of(context).pushNamed(Constants.graphPage);
        },
        text: 'Check Time Spent Graph',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
