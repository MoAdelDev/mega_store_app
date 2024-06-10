import 'package:flutter/material.dart';
import 'package:mega_store_app/core/router/routes.dart';
import 'package:mega_store_app/features/catgeory_products/category_products_screen.dart';
import 'package:mega_store_app/features/home/home_screen.dart';
import 'package:mega_store_app/features/login/forget_password_screen.dart';
import 'package:mega_store_app/features/login/login_screen.dart';
import 'package:mega_store_app/features/product_details/product_details_screen.dart';
import 'package:mega_store_app/features/register/register_screen.dart';

class RouteManager {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return _getMaterialPageRoute(const LoginScreen());

      case Routes.register:
        return _getMaterialPageRoute(const RegisterScreen());

      case Routes.forgetPassword:
        return _getMaterialPageRoute(const ForgetPasswordScreen());

      case Routes.home:
        return _getMaterialPageRoute(const HomeScreen());

      case Routes.categoryProducts:
        return _getMaterialPageRoute(const CategoryProductsScreen());

      case Routes.productDetails:
        return _getMaterialPageRoute(const ProductDetailsScreen());

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
