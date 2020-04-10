import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Push the button below to ask',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.white),
            ),
          ),
          Expanded(
            flex: 15,
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
