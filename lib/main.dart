import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded buildKey({required Color colors, required int val}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(val);
        },
        child: Container(
          color: colors,
          margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colors: Colors.white70, val: 1),
              buildKey(colors: Colors.lightGreen, val: 2),
              buildKey(colors: Colors.redAccent, val: 3),
              buildKey(colors: Colors.blueAccent, val: 4),
              buildKey(colors: Colors.blueGrey, val: 5),
              buildKey(colors: Colors.yellowAccent, val: 6),
              buildKey(colors: Colors.teal, val: 7)
            ],
          ),
        ),
      ),
    );
  }
}
