import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/OTP_verification.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             const SizedBox(height: 10,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              "Please enter your phone number and you wil receive a OTP to reset it via number",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 50,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40,),
             ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OTPVerification()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Send Code",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            
          ],
        ),
        
        )
      ),
    );
  }
}