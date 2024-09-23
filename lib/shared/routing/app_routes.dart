import 'package:eshtry_meny/characteristic/login/login_screen.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? gnerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        return null;
    }
  }
}
