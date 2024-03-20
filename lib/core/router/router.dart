import 'package:flutter/material.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/features/time_tracker/pages/graph_page.dart';
import 'package:login_cubit/features/time_tracker/pages/landing_page.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.graphPage:
        return _getRoute(GraphPage());
      default:
        return _getRoute(LandingPage());
    }
  }

  static Route<dynamic> _getRoute(Widget screenName) =>
      MaterialPageRoute(builder: (_) => screenName);
}
