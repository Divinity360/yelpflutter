import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/router/router.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/features/time_tracker/bloc/time_tracker_bloc.dart';

void main() => runApp(BlocProvider(
    create: (_) => TimeTrackerBloc()..add(TimeTrackerEvent.timerStarted()),
    child: LoginCubitApp()));

class LoginCubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'divinity',
      onGenerateRoute: AppRoutes.generateRoute,
      theme: AppTheme.buildThemeData(),
    );
  }
}
