import 'package:flutter/material.dart';
import 'package:test_application/blocs/color_bloc.dart';
import 'package:test_application/services/color_service.dart';
import 'package:test_application/widjets/phrase.dart';

class HomePage extends StatelessWidget {
  final ColorService _service = ColorService();
  final ColorBloc _bloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Color>(
        stream: _bloc.colorStream,
        initialData: _service.randomColor(),
        builder: (context, AsyncSnapshot<Color> snapshot) {
          Color color = snapshot.data;
          return Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _bloc.selectColor(_service.randomColor());
                },
                child: Container(
                    color: color,
                    child: Center(
                      child: Text(
                        "Hey there!",
                        style: Theme.of(context).textTheme.title,
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
          );
        },
      ),
    );
  }
}
