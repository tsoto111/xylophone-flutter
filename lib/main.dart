import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int filenameIndex) {
    final player = AudioCache();
    player.play("note$filenameIndex.wav");
  }

  Widget buildKey({MaterialColor keyColor, int soundIndex}) {
    return Expanded(
      child: RawMaterialButton(
        fillColor: keyColor,
        onPressed: () {
          playSound(soundIndex);
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, soundIndex: 1),
              buildKey(keyColor: Colors.orange, soundIndex: 2),
              buildKey(keyColor: Colors.yellow, soundIndex: 3),
              buildKey(keyColor: Colors.lightGreen, soundIndex: 4),
              buildKey(keyColor: Colors.green, soundIndex: 5),
              buildKey(keyColor: Colors.blue, soundIndex: 6),
              buildKey(keyColor: Colors.purple, soundIndex: 7),
            ],
          ),
        ),
      ),
    );
  }
}
