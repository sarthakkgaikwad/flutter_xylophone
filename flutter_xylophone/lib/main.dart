import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(int soundNumber, Color soundColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        color: soundColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.blue[100]),
              buildKey(2, Colors.blue[200]),
              buildKey(3, Colors.blue[300]),
              buildKey(4, Colors.blue[400]),
              buildKey(5, Colors.blue[500]),
              buildKey(6, Colors.blue[600]),
              buildKey(7, Colors.blue[700]),
            ],
          ),
        ),
      ),
    );
  }
}
