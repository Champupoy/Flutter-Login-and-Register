// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/adie.dart';
import 'package:flutter_application_1/gelo.dart';
import 'package:flutter_application_1/ian.dart';
import 'login.dart';
import 'signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mini Projects'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple[400],
      ),
      backgroundColor: Colors.amber[100],
      body: Container(
        child: Container(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.drawception.com/drawings/684230/twYpXaTphb.png'),
                ),
                title: Text('Diary Application'),
                subtitle: Text('Angelo Buenaventura'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DiaryApp()),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.drawception.com/drawings/567392/qGpN6rDmSl.png'),
                ),
                title: Text('Calculator Application'),
                subtitle: Text('Joshua Ian Española'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyCalculator()),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.drawception.com/drawings/888056/nYVWAXjFHl.png'),
                ),
                title: Text('Calculator Application'),
                subtitle: Text('Adrienne Flores'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp())
                  );
                },
              ),
              SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text('Logout'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
