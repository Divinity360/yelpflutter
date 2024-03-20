import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/features/time_tracker/bloc/time_tracker_bloc.dart';
import 'package:login_cubit/features/time_tracker/widgets/appBar.dart';
import 'package:login_cubit/features/time_tracker/widgets/appBarChart.dart';
import 'package:login_cubit/features/time_tracker/widgets/outlineButton.dart';
import 'package:login_cubit/features/time_tracker/widgets/primaryButton.dart';
import 'package:login_cubit/features/time_tracker/widgets/reminder_bottom_widget.dart';
import 'package:login_cubit/features/time_tracker/widgets/timeup_alert_widget.dart';

class GraphPage extends StatefulWidget {
  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  final playerTimeListInSeconds = [ 20, 50, 151, 201, 40, 123];

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
              child: BlocSelector<TimeTrackerBloc, TimeTrackerState, Duration>(
                  selector: (state) => state.totalTimeDuration,
                  builder: (context, duration) {
                    return AppBarChart(
                      playerTimeListInMinutes: [...playerTimeListInSeconds, duration.inSeconds],
                    );
                  }),
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
      context
          .read<TimeTrackerBloc>()
          .add(TimeTrackerEvent.reminderAdded(result));
    }
  }
}
