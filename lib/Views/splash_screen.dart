import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_app/bottomnavigationbar_custom.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Color.fromRGBO(68, 194, 252, 1),
              Color.fromRGBO(171, 230, 255, 1),
            ],
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Get.off(() => const BottomnavigationbarCustom());
          },
          child: Center(
            child: Image.asset("assets/splash.png"),
          ),
        ),
      ),
    );
  }
}
