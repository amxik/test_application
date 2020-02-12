import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()),
    );

List<String> hexColors = [
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
                color: _colorFromHex(
                    hexColors[Random().nextInt(hexColors.length - 1)]),
                child: Center(
                  child: Text(
                    "Hey there!",
                    style: TextStyle(fontSize: 25),
                  ),
                )),
          ),
          Phrase("Hello!", context),
          Phrase("How are you?", context),
          Phrase("What is your name?", context),
          Phrase("Have a nice day!", context),
          Phrase("How do you do?", context),
          Phrase("I'm glad to see you!", context),
          Phrase("What's news?", context),
          Phrase("Nice to meet you!", context),
        ],
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class Phrase extends StatelessWidget {
  final String phrase;
  final BuildContext context;

  Phrase(this.phrase, this.context);

  @override
  Widget build(BuildContext context) {
    int fullHeight = MediaQuery.of(context).size.height.toInt();
    int fullWidth = MediaQuery.of(context).size.width.toInt();
    return Positioned(
      left: (Random().nextInt(fullWidth - phrase.length * 8)).toDouble(),
      bottom: (Random().nextInt(fullHeight - phrase.length * 8)).toDouble(),
      child: Text(
        phrase,
        softWrap: true,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
