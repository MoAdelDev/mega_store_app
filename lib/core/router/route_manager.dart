import 'package:flutter/material.dart';
import 'package:mega_store_app/core/router/routes.dart';

class RouteManager {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        {
          return _getMaterialPageRoute(const Scaffold());
        }
    }

    return null;
  }

  MaterialPageRoute _getMaterialPageRoute(Widget screen) => MaterialPageRoute(
        builder: (context) => screen,
      );
}
