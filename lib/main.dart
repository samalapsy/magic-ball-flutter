import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: MagicApp(),
        ),
      ),
    );

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int currentQuestion = 1;

  void _askQuestion() {
    setState(() {
      currentQuestion = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: _askQuestion,
              child: Image.asset('images/ball$currentQuestion.png'),
            ),
          ),
        ],
      ),
    );
  }
}
