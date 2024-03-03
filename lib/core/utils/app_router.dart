import 'package:authmobileapp/features/auth/ui/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String loginScreen = '/';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
    }
    return null;
  }
}