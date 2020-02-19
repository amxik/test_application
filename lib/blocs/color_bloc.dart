import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_application/blocs/bloc.dart';

class ColorBloc implements Bloc {
  StreamController _colorController = StreamController<Color>();

  Stream<Color> get colorStream => _colorController.stream;

  void selectColor(Color color) {
    _colorController.sink.add(color);
  }

  @override
  void dispose() {
    _colorController.close();
  }
}
