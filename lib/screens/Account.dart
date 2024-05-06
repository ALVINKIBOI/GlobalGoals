// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/login.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body:SingleChildScrollView(
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 70,
                  //backgroundImage:Image.asset("images/user.jpeg"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Name"),
                    subtitle: Text("AlvinKiboi"),
                    leading: Icon(CupertinoIcons.person),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Email"),
                    subtitle: Text("kiboialvin8@gmail.com"),
                    leading: Icon(CupertinoIcons.mail),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Donation History"),
                    subtitle: Text("\$200"),
                    leading: Icon(CupertinoIcons.heart_circle),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Phone Number"),
                    subtitle: Text("+254 715570973"),
                    leading: Icon(CupertinoIcons.phone),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                 const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Goals Supported"),
                    subtitle: Text("None"),
                    leading: Icon(CupertinoIcons.phone),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(height: 30,),
                 Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.red.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: const ListTile(
                    title: Text("Contact Us"),
                    subtitle: Text("kiboialvin8@gmail.com"),
                    leading: Icon(CupertinoIcons.phone),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                 const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    "Log Out",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
