import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // expanded
  Expanded button({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note$number.wav');
        },
        child: Text('Play'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              button(number: 1, color: Colors.red),
              button(number: 2, color: Colors.green),
              button(number: 3, color: Colors.yellow),
              button(number: 4, color: Colors.blue),
              button(number: 5, color: Colors.teal),
              button(number: 6, color: Colors.orange),
              button(number: 7, color: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
