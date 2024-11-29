import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_app/Views/splash_screen.dart';
import 'package:video_player/video_player.dart';

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

