import 'dart:math';

import 'package:flutter/material.dart';

class Phrase extends StatelessWidget {
  final String phrase;
  Phrase(this.phrase);

  @override
  Widget build(BuildContext context) {
    int fullHeight = MediaQuery.of(context).size.height.toInt();
    int fullWidth = MediaQuery.of(context).size.width.toInt();
    return Positioned(
      left: _getIndented(phrase, fullWidth),
      bottom: _getIndented(phrase, fullHeight),
      child: Text(
        phrase,
        softWrap: true,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  double _getIndented(String phrase, int size) {
    return (Random().nextInt(size - phrase.length * 8)).toDouble();
  }
}
