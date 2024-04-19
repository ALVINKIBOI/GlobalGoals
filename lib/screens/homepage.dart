import 'package:flutter/material.dart';
//import 'package:globalgoalsapp/screens/navigation_menu.dart';
//import 'package:globalgoalsapp/screens/navigation_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GlobalGoals",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: const SingleChildScrollView(
        child: Padding(padding:EdgeInsets.all(10),
        child: Column(
          children: [
            //NavigationMenu(),
          ],
        ),
        
        
        ),
      ),
     
    );
  }
}
