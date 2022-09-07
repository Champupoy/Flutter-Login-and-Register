// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Please login again. We missed you!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),

              //NOT A MEMBER?//

              Text(
                ' Not a member?',
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                ' Register Now',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ));
  }
}
