import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("1 screen...");
    Timer(Duration(seconds: 5), done);
  }

  void done() {
    debugPrint("2 screen.............");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Splash Screen !"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Splash Screen",
                style: TextStyle(
                    // fontFamily: ,
                    color: Colors.amber,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CircularProgressIndicator(
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
