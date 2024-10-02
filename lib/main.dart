import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_app/Views/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
  }
}
