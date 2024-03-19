import 'package:flutter/material.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/widgets/appBar.dart';
import 'package:login_cubit/widgets/appBarChart.dart';
import 'package:login_cubit/widgets/outlineButton.dart';
import 'package:login_cubit/widgets/primaryButton.dart';
import 'package:login_cubit/widgets/reminder_bottom_widget.dart';
import 'package:login_cubit/widgets/timeup_alert_widget.dart';

class GraphPage extends StatefulWidget {
  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  final playerTimeListInMinutes = [160, 60, 100, 151, 201, 40, 123];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Container(
              width: 300,
              height: 270,
              margin: EdgeInsets.only(top: 50, bottom: 20),
              padding: EdgeInsets.only(top: 30),
              child: AppBarChart(
                playerTimeListInMinutes: playerTimeListInMinutes,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: OutlineButton(
                onTap: () async {
                  await onReminderButtonTapped(context);
                },
                text: 'Set Reminder'),
          ),
        ]),
      ),
    );
  }

  Future<void> onReminderButtonTapped(BuildContext context) async {
    final result =
        await Helpers.modalBottomSheetMenu(context, ReminderBottomWidget());
    if (result != null) {
      Future.delayed(Duration(minutes: result), () async {
        await Helpers.showAlertDialog(context, TimeUpAlertWidget(minutes: result,));
      });
    }
  }
}
