import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/homepage.dart';

class success extends StatelessWidget {
  const success({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
               Image.asset("images/tick.gif",
                height: 250,
            ),
            const Text("Success!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            const Text("Thank you for donating to the UN goals",
                style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700
            ),
            )
            ],
          ),
           Padding(
             padding: const EdgeInsets.all(40),
             child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    "Home",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
           ),
        ],
      ),

    );
  }
}