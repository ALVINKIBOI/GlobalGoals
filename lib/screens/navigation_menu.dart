import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(icon:Icon(Icons.home), label:'Home')



            ],
      ),
    );
  }
}