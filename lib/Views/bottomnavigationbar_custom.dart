import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:uni_app/Views/home_screen.dart';

class BottomnavigationbarCustom extends StatelessWidget {
  const BottomnavigationbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return  PersistentTabView(
        context,
        navBarHeight: 70,
        navBarStyle: NavBarStyle.style15,
        screens: [
          const HomeScreen(),
          Container(),
          Container(),
          Container(),
          Container()
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.home_outlined,
              size: 36,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.book_outlined),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
            inactiveIcon: const Icon(
              Icons.view_agenda,
              color: Colors.white,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.fort_outlined),
          ),
          PersistentBottomNavBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Container(
                height: 42,
                width: 42,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Image.asset(
                  "assets/harli.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      );
  }
}