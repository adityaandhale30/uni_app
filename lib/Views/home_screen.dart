import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          "UniApp",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
     // body: GridView.builder(gridDelegate: SliverFixedGridDelegate, itemBuilder: itemBuilder)
    );
  }
}
