import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/homepage.dart';
//import 'package:globalgoalsapp/screens/navigation_menu.dart';
//import 'package:globalgoalsapp/screens/signin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class SignIn extends StatefulWidget {
   const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _firstnamecontroller=TextEditingController();
  final TextEditingController _secondnamecontroller=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _confirmpasswordcontroller=TextEditingController();

  Future<void>register() async{
        
          var snackBar=const SnackBar(content: Text(''));
          if (_passwordcontroller.text != _confirmpasswordcontroller.text){
          content: const Text("password does not match");
          return;
          }    
        try{
       CollectionReference users=
       FirebaseFirestore.instance.collection('users'); 
       users.add({
          'email':_emailcontroller.text.trim(),
          'password':_passwordcontroller.text.trim(),  
        });
        snackBar=const SnackBar
        (content:Text("Registration succesful"),
        backgroundColor: Colors.blue,);
        
    }catch (e){
            snackBar=const SnackBar(
            content: Text('Registation failed'),
            backgroundColor: Colors.blue,);
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    @override
    void dispose() {
      _emailcontroller.dispose();
      _firstnamecontroller.dispose();
      _secondnamecontroller.dispose();
      _passwordcontroller.dispose();
      _confirmpasswordcontroller.dispose();
      super.dispose();
    }
 }
 
    Future signIn() async {
      if (passwordConfirmed()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:_emailcontroller.text.trim(), 
        password:_passwordcontroller.text.trim(),
        );
        addUserDetails(
          _firstnamecontroller.text.trim(),
          _secondnamecontroller.text.trim(),
          _emailcontroller.text.trim(),
          
        );
      }
    }

    Future addUserDetails(String firstName,String secondName,String email) async{
      await FirebaseFirestore.instance.collection('Users').add({
        'firstName':'firstName',
        'secondName':'secondName',
        'email':'email'
      });
    }

    bool passwordConfirmed(){
      if (_passwordcontroller.text.trim()==
          _confirmpasswordcontroller.text.trim()){
            return true;
           } else {
            return false;
           }
           }
           

        
@override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset("images/donations.jpeg"),
                const Text("Register",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller:_firstnamecontroller,
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
                        controller: _emailcontroller,
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
                        validator: (String? value) {
                      if (value==null || value.isEmpty){
                        return "Please enter password";
                      }
                      return null;
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
                        //controller: _confirmpasswordcontroller,
                        validator: (String? value) {
                      if (value==null || value.isEmpty){
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(55),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
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