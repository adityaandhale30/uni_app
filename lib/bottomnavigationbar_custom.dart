import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:uni_app/Views/analytics/analytics_screen.dart';
import 'package:uni_app/Views/homescreen/home_screen.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20),
        colorBehindNavBar: Colors.white,
      ),
      context,
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style15,
      screens: [
        const HomeScreen(),
        const AnalyticsScreen(),
        Container(),
        Container(),
        Container(),
      ],
      items: [
        _buildNavItem(
          icon: Icons.home_outlined,
        ),
        _buildNavItem(
          icon: Icons.analytics_outlined,
        ),
        _buildNavItem(
          icon: Icons.search_rounded,
        ),
        _buildNavItem(
          icon: Icons.school_outlined,
        ),
        PersistentBottomNavBarItem(
          inactiveIcon: const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/harli.jpg"),
          ),
          icon: Container(
            clipBehavior: Clip.antiAlias,
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
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

  PersistentBottomNavBarItem _buildNavItem({required IconData icon}) {
    return PersistentBottomNavBarItem(
      icon: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [
              Color.fromARGB(255, 15, 32, 85),
              Color.fromARGB(255, 34, 193, 195),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds);
        },
        child: Icon(
          icon,
          size: 36,
          color: Colors.white, // This will be overridden by the ShaderMask
        ),
      ),
      inactiveIcon: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }
}
