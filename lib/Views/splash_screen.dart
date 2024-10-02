import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        nextScreen: Container(),
        splash: Column(
          children: [
            Center(
              child: Image.asset("assets/splash.png")
            ),
          ],
        ),
      ),
    );
  }
}
