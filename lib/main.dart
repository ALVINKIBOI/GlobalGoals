import 'package:email_validator/email_validator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:globalgoalsapp/firebase_options.dart';
import 'package:globalgoalsapp/screens/homepage.dart';
import 'package:globalgoalsapp/screens/login.dart';
import 'package:globalgoalsapp/screens/mainpage.dart';
import 'package:globalgoalsapp/screens/navigation_menu.dart';
import 'package:globalgoalsapp/screens/splashscreen.dart';
import 'package:globalgoalsapp/screens/success.dart';
//import 'package:globalgoalsapp/screens/mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  var email = "fredrik@gmail.com";

  assert(EmailValidator.validate(email));

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
