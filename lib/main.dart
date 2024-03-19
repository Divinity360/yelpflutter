import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/router/router.dart';
import 'package:login_cubit/core/theme/theme.dart';

void main() => runApp(LoginCubitApp());

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
