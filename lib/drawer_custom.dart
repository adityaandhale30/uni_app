import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:uni_app/Views/homescreen/home_screen.dart';

GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();

class Drawercustom extends StatelessWidget {
  const Drawercustom({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        body: SliderDrawer(
      slider: Container(color: Colors.red),
      child: HomeScreen(),
    ));
  }
}
