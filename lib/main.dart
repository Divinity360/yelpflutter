import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_cubit/core/router/router.dart';

void main() => runApp(LoginCubitApp());

class LoginCubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'divinity',
          onGenerateRoute: AppRoutes.generateRoute,
          theme: ThemeData(
              primarySwatch: Colors.teal,
              textTheme: GoogleFonts.poppinsTextTheme()),
        );
  }
}
