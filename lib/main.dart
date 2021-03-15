import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //generateWordPairs().forEach(print);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Text('Hello!'),
          ),
        ),
      ),
    );
  }
}
