import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playNote(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color = Color, number = int}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playNote(number);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.teal, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
