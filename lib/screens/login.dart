import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/forgot_password.dart';
import 'package:globalgoalsapp/screens/homepage.dart';
import 'package:globalgoalsapp/screens/signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset("images/donations.jpeg"),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Email",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: passwordObscure,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordObscure = !passwordObscure;
                                });
                              },
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(55),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
