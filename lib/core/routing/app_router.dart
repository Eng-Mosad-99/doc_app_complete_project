import 'package:doc_app_complete_project/core/routing/routes.dart';
import 'package:doc_app_complete_project/feature/login/ui/login_screen.dart';
import 'package:doc_app_complete_project/feature/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (args as className)
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
