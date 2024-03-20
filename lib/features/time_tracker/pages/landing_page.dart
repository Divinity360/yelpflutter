import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/features/time_tracker/bloc/time_tracker_bloc.dart';
import 'package:login_cubit/features/time_tracker/widgets/primaryButton.dart';
import 'package:login_cubit/features/time_tracker/widgets/timeup_alert_widget.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimeTrackerBloc, TimeTrackerState>(
        buildWhen: (prev, state) =>
            state.status == TimeTrackerStatus.trackTimeInProgress,
        listenWhen: (prev, state) =>
            state.status == TimeTrackerStatus.trackTimeElapsed,
        listener: (context, state) async {
          await Helpers.showAlertDialog(
            context,
            TimeUpAlertWidget(minutes: state.totalTimeDuration.inMinutes),
          );
          context.read<TimeTrackerBloc>().add(TimeTrackerEvent.timerResumed());
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.lightGreenBkg,
            body: SafeArea(
              child: Center(
                  child: Text(
                '${Helpers.durationToFullTimeString(state.totalTimeDuration)} passed',
                style: AppTheme.displayLargeTextStyle,
              )),
            ),
            floatingActionButton: PrimaryButton(
              onTap: () {
                context
                    .read<TimeTrackerBloc>()
                    .add(TimeTrackerEvent.timerPaused());
                Navigator.of(context)
                    .pushNamed(Constants.graphPage)
                    .then((value) {
                  context
                      .read<TimeTrackerBloc>()
                      .add(TimeTrackerEvent.timerResumed());
                });
              },
              text: 'Check Time Spent Graph',
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
        });
  }
}
