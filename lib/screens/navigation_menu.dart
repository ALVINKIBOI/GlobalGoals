import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/Account.dart';
import 'package:globalgoalsapp/screens/donations.dart';
import 'package:globalgoalsapp/screens/homepage.dart';
import 'package:globalgoalsapp/screens/settings.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const Setting(),
    const Donations(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.settings,
          CupertinoIcons.heart_circle_fill,
          CupertinoIcons.person,
        ],
        activeIndex: 0,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.none,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        iconSize: 20,
        elevation: 0,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
