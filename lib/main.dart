import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:login_cubit/core/router/router.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/injections.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjections();
  await dotenv.load(fileName: '.env');
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'divinity',
      onGenerateRoute: AppRoutes.generateRoute,
      theme: AppTheme.buildThemeData(),
    );
  }
}
