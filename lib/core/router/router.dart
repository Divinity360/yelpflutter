import 'package:flutter/material.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/features/restaurants/presentation/culinary_roulette/pages/culinary_roulette_page.dart';
import 'package:login_cubit/features/restaurants/presentation/landing_page/landing_page.dart';
import 'package:login_cubit/features/restaurants/presentation/mystery_search/pages/mystery_search_page.dart';


class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.mysterySearchPage:
        return _getRoute(MysterySearchPage());
      case Constants.culinaryRoulettePage:
        return _getRoute(CulinaryRoulettePage());
      default:
        return _getRoute(LandingPage());
    }
  }

  static Route<dynamic> _getRoute(Widget screenName) =>
      MaterialPageRoute(builder: (_) => screenName);
}
