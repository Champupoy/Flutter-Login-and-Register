import 'package:flutter/material.dart';

void main() {
  runApp(const DiaryApp());
}

class DiaryApp extends StatelessWidget {
  const DiaryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Littlemisspriss',
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.white70.withOpacity(1.0));

    return Scaffold(
      appBar: null,
      body: Center(
          child: Column (
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:230.0),
                child: Image.asset('assets/images/diary_home.png'),
              ),
              Container(
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Diary()),
                      );
                    },
                    child: const Text('Continue',
                        style: TextStyle(
                            fontFamily: 'Littlemisspriss',
                            fontSize: 25.0,
                            color: Colors.black
                        )),
                  )
              )
            ],
          )
      ),
    );
  }
}

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  String input = "";
  List entry = [];

  final date = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).toString().replaceAll("00:00:00.000", "");

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: null,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('How are you doing today? <3'),
                  content: TextField(
                    decoration: InputDecoration(
                        hintText: "Tell me everything"
                    ),
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          entry.add(input);
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("Confirm"),
                    )
                  ],
                );
              }
          );
        },
        label: const Text('write something ;)',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25.0
          ),
        ),
        icon: const Icon(Icons.create,
            color: Colors.black),
        backgroundColor: Colors.white70.withOpacity(1.0),
      ),
      body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: entry.length,
            itemBuilder: (BuildContext context, int index)  {
              return Dismissible(
                  key: Key(entry[index]),
                  child: Card(
                      elevation: 4,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        title: Text(entry[index],
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        trailing: Text(date,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      )
                  )
              );
            },
          )
      ),
    );
  }
}

