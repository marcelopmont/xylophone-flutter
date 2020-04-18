import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache audioPlayer = AudioCache();

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
              getKey(color: Colors.red, song: 1),
              getKey(color: Colors.orange, song: 2),
              getKey(color: Colors.yellow, song: 3),
              getKey(color: Colors.green, song: 4),
              getKey(color: Colors.teal, song: 5),
              getKey(color: Colors.blue, song: 6),
              getKey(color: Colors.deepPurple, song: 7),
            ],
          ),),
      ),
    );
  }

  void play(int note) {
    audioPlayer.play('note$note.wav');
  }

  Widget getKey({color: MaterialColor, song: int}) =>
      Expanded(
        child: FlatButton(
          onPressed: () {
            play(song);
          },
          color: color,
        ),
      );
}
