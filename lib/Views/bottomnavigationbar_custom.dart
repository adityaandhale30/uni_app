import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:uni_app/Views/home_screen.dart';

class BottomnavigationbarCustom extends StatelessWidget {
  const BottomnavigationbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      context,
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style15,
      //decoration: NavBarDecoration(),
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
            // size: 36,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.analytics_outlined),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          inactiveIcon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.school_outlined),
        ),
        PersistentBottomNavBarItem(
          icon: const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(
              "assets/harli.jpg",
            ),
          ),
          inactiveIcon: Container(
            clipBehavior: Clip.antiAlias,
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              //color: Colors.green,
            ),
            child: Image.asset(
              "assets/harli.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
