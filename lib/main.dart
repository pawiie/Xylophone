import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(child: Xylophone()),
    ),
  ));
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void play(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(1);
            },
            color: Colors.deepPurple,
            // height: 100,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(2);
            },
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(3);
            },
            color: Colors.blue,
            // height: 100,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(4);
            },
            color: Colors.green,
            // height: 100,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(5);
            },
            color: Colors.yellow,
            // height: 100,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(6);
            },
            color: Colors.orange,
            // height: 100,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              play(7);
            },
            color: Colors.red,
            // height: 100,
          ),
        ),
      ],
    );
  }
}
