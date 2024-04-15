import 'package:flutter/material.dart';
//import 'package:globalgoalsapp/screens/contactus.dart';
//import 'package:globalgoalsapp/screens/donations.dart';
//import 'package:globalgoalsapp/screens/homepage.dart';
//import 'package:globalgoalsapp/screens/login.dart';
import 'package:globalgoalsapp/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlobalsGoals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


  
    
   