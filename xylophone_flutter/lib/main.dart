import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Widget buildKey({Color color, int n}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () => playSound(1),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, n: 1),
              buildKey(color: Colors.orange, n: 2),
              buildKey(color: Colors.yellow, n: 3),
              buildKey(color: Colors.green, n: 4),
              buildKey(color: Colors.teal, n: 5),
              buildKey(color: Colors.blue, n: 6),
              buildKey(color: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
