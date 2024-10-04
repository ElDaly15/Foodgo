import 'package:flutter/material.dart';
import 'package:foodgo/core/helper/on_generate_routes.dart';
import 'package:foodgo/featuers/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FoodgoApp());
}

class FoodgoApp extends StatelessWidget {
  const FoodgoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
