import 'package:flutter/material.dart';
import 'package:training_sync/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:training_sync/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:training_sync/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {

    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
