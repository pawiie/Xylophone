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

  Expanded render(mus, col) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(mus);
        },
        color: col,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        render(1, Colors.deepPurple),
        render(2, Colors.indigo),
        render(3, Colors.blue),
        render(4, Colors.green),
        render(5, Colors.yellow),
        render(6, Colors.orange),
        render(7, Colors.red),
      ],
    );
  }
}
