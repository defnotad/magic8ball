import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeApp createState() => _HomeApp();
}

class _HomeApp extends State<HomeApp> {
  int ballImageNumber = 5;

  void triggerBallImage() {
    setState(() {
      ballImageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade600,
      body: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballImageNumber.png'),
          onPressed: triggerBallImage,
        ),
      ),
    );
  }
}
