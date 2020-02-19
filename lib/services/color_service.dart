import 'dart:math';

import 'package:flutter/material.dart';

class ColorService {
  Color randomColor() {
    Color color = Color.fromARGB(
        _getRandomIntForColor(),
        _getRandomIntForColor(),
        _getRandomIntForColor(),
        _getRandomIntForColor());
    return color;
  }

  int _getRandomIntForColor() {
    return Random().nextInt(255);
  }
}
