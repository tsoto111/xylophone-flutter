import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(filenameIndex) {
    final player = AudioCache();
    player.play("note$filenameIndex.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.green.shade900,
                onPressed: () {
                  playSound(5);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                fillColor: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
