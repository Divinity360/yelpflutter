import 'package:flutter/material.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/shared/presentation/widgets/appBar.dart';
import 'package:login_cubit/shared/presentation/widgets/primaryButton.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreenBkg,
      appBar: CustomAppBar(text: 'Mystery Dining Adventure'),
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryButton(
              text: 'Mystery Search',
              onTap: () {
                Navigator.of(context).pushNamed(Constants.mysterySearchPage);
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: PrimaryButton(
                text: 'Culinary Roulette',
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.culinaryRoulettePage);
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
