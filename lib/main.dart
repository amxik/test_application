import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_application/Phrase.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()),
    );

List<String> _hexColors = [
  "#FFFFFF",
  "#C0C0C0",
  "#808080",
  "#FF0000",
  "#800000",
  "#696969",
  "#FFFF00",
  "#808000",
  "#00FF00",
  "#008000",
  "#00FFFF",
  "#008080",
  "#0000FF",
  "#FF00FF",
  "#808080",
  "#800080",
  "#ADFF2F",
  "#F0FFF0",
  "#FF69B4",
  "#CD5C5C",
  "#4B0082",
  "#FFFFF0",
  "#F0E68C",
  "#E6E6FA",
  "#FFF0F5",
  "#7CFC00",
  "#FFFACD",
  "#ADD8E6",
  "#F08080",
  "#E0FFFF",
  "#FAFAD2",
  "#90EE90",
  "#D3D3D3",
  "#FFB6C1",
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
                color: _randomColor(),
                child: Center(
                  child: Text(
                    "Hey there!",
                    style: TextStyle(fontSize: 25),
                  ),
                )),
          ),
          Phrase("Hello!"),
          Phrase("How are you?"),
          Phrase("What is your name?"),
          Phrase("Have a nice day!"),
          Phrase("How do you do?"),
          Phrase("I'm glad to see you!"),
          Phrase("What's news?"),
          Phrase("Nice to meet you!"),
        ],
      ),
    );
  }
}

Color _randomColor() {
  String hexColor = _hexColors[Random().nextInt(_hexColors.length - 1)];
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
