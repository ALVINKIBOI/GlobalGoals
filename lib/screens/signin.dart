import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/firestore/database.dart';
//import 'package:globalgoalsapp/screens/homepage.dart';
import 'package:globalgoalsapp/screens/navigation_menu.dart';
import 'package:random_string/random_string.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _firstnamecontroller = TextEditingController();
  TextEditingController _secondnamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirmpasswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String _email = "";
  String _password = "";
  String _firstname = "";
  String _secondname = "";
  String _confirmpassword = "";

  registration() async {
    if (_password != null) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email,
          password: _password,
        );
        ScaffoldMessenger.of(context).showSnackBar(
            (const SnackBar(content: Text("Registered succesfully"))));
        Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => const NavigationMenu()));
      } on FirebaseException catch (e) {
        if (e.code == 'weak password') {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
              (const SnackBar(content: Text("Your passwoed is very weak"))));
        } else if (e.code == 'email already in use') {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
              (const SnackBar(content: Text("Email already in use"))));
        }
      }
    }
  }
   bool passwordConfirmed() {
    if (_passwordcontroller.text.trim() ==
        _confirmpasswordcontroller.text.trim()) {
      return true;
    } else {
      return false;
    }
  }
  // @override
  // void dispose() {
  //   _firstnamecontroller.dispose();
  //   _secondnamecontroller.dispose();
  //   _emailcontroller.dispose();
  //   _passwordcontroller.dispose();
  //   _confirmpasswordcontroller.dispose();
  //   super.dispose();
  // }

  // Future signIn() async {
  //   if (passwordConfirmed()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: _emailcontroller.text.trim(),
  //       password: _passwordcontroller.text.trim(),
  //     );
  //     addUsersDetails(
  //       _firstnamecontroller.text.trim(),
  //       _secondnamecontroller.text.trim(),
  //       _emailcontroller.text.trim(),
  //       _passwordcontroller.text.trim(),
  //     );
  //   }
  // }

  // Future addUsersDetails(String firstName, String secondName, String email,
  //     dynamic password) async {
  //   await FirebaseFirestore.instance.collection("Users").add({
  //     _firstname: _firstname,
  //     _email: _email,
  //     _secondname: _secondname,
  //     _password: _password,
  //   });
  // }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset("images/donations.jpeg"),
                const Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _firstnamecontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _firstname = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: "First Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _secondnamecontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _secondname = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: "Second Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailcontroller,
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : "Please enter a valid email",
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return "Please enter a valid Email";
                          //   }
                          //   return null;
                          // },
                          // onChanged: (value) {
                          //   setState(() {
                          //     _email = value;
                          //   });
                          // },
                          decoration: const InputDecoration(
                            labelText: "Enter Email",
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _confirmpasswordcontroller,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Confirm Password",
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  _firstname = _firstnamecontroller.text.trim();
                                  _secondname =_secondnamecontroller.text.trim();
                                  _email = _emailcontroller.text.trim();
                                  _password = _passwordcontroller.text.trim();
                                  _confirmpassword =_confirmpasswordcontroller.text.trim();
                                });
                              }
                              registration();
                              String id=randomAlphaNumeric(10);
                               Map<String, dynamic> usersInfoMap={
                                  "firstname":_firstnamecontroller.text.trim(),
                                  "secondname" :_secondnamecontroller.text.trim(),
                                  "email" : _emailcontroller.text.trim(),
                                  "password" : _passwordcontroller.text.trim(),
                               };
                              await Database().addUsersDetails(usersInfoMap, id);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(55),
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Sign In",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
