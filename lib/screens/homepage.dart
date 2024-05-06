import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:globalgoalsapp/screens/donations.dart';
//import 'package:globalgoalsapp/screens/navigation_menu.dart';
//import 'package:globalgoalsapp/screens/navigation_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<AssetImage> images = [
  const AssetImage('images/1.jpeg'),
  const AssetImage('images/2.jpeg'),
  const AssetImage('images/3.jpeg'),
  const AssetImage('images/4.jpeg'),
  const AssetImage('images/5.jpeg'),
  const AssetImage('images/6.jpeg'),
  const AssetImage('images/7.jpeg'),
  const AssetImage('images/8.jpeg'),
  const AssetImage('images/9.jpeg'),
  const AssetImage('images/10.jpeg'),
  const AssetImage('images/11.jpeg'),
  const AssetImage('images/12.jpeg'),
  const AssetImage('images/13.jpeg'),
  const AssetImage('images/14.jpeg'),
  const AssetImage('images/15.jpeg'),
  const AssetImage('images/16.jpeg'),
];


    SliverGridDelegate delegate = const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1,
    );

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
      body:GridView.builder(
        gridDelegate: delegate,
        itemCount: images.length,
        itemBuilder: (context, index) {
          GestureDetector(
            onDoubleTap: (){
               Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) =>
                          const Donations()));
            },
          );
          return Image(
            image: images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
 