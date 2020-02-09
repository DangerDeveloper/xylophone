import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  Expanded rabut({int audioTrack, Color color}) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$audioTrack.wav');
        },
        color: color,
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
              rabut(color: Colors.red, audioTrack: 1),
              rabut(color: Colors.blue, audioTrack: 2),
              rabut(color: Colors.grey, audioTrack: 3),
              rabut(color: Colors.blueGrey, audioTrack: 4),
              rabut(color: Colors.pink, audioTrack: 5),
              rabut(color: Colors.pinkAccent, audioTrack: 6),
              rabut(color: Colors.indigo, audioTrack: 7),
            ],
          ),
        ),
      ),
    );
  }
}
