// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'signup.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF701ebd),
                Color(0xFF873bbc),
                Color(0xFFfe4a97),
                Color(0xFFe17763),
                Color(0xFF68998c),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),

              //EMAIL//
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        prefixIconColor: Colors.black,
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              //PASSWORD//
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: Colors.black,
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              //LOGIN//
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),

              //NOT A MEMBER?//

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Not a member?',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    shadowColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Register now'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  }),
            ]),
          ),
        ));
  }
}
