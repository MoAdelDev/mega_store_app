import 'package:flutter/material.dart';
import 'package:mega_store_app/core/router/routes.dart';
import 'package:mega_store_app/features/login/forget_password_screen.dart';
import 'package:mega_store_app/features/login/login_screen.dart';
import 'package:mega_store_app/features/register/register_screen.dart';

class RouteManager {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        {
          return _getMaterialPageRoute(const LoginScreen());
        }

      case Routes.register:
        {
          return _getMaterialPageRoute(const RegisterScreen());
        }

      case Routes.forgetPassword:
        {
          return _getMaterialPageRoute(const ForgetPasswordScreen());
        }

      default:
        {
          return null;
        }
    }
  }

  MaterialPageRoute _getMaterialPageRoute(Widget screen) => MaterialPageRoute(
        builder: (context) => screen,
      );
}
