import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:foodgo/core/helper/on_generate_routes.dart';
import 'package:foodgo/featuers/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
      DevicePreview(enabled: false, builder: (context) => const FoodgoApp()));
}

class FoodgoApp extends StatelessWidget {
  const FoodgoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
