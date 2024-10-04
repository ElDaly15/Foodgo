import 'package:flutter/material.dart';
import 'package:foodgo/featuers/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
