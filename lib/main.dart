import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache();
    player.play('note$numberSound.wav');
//    print("Hello");
  }

  Expanded buildKey({Color color, int numberSound}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(numberSound),
        color: color,
//        child: Text('Abc'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, numberSound: 1),
              buildKey(color: Colors.orange, numberSound: 2),
              buildKey(color: Colors.yellow, numberSound: 3),
              buildKey(color: Colors.green, numberSound: 4),
              buildKey(color: Colors.teal, numberSound: 5),
              buildKey(color: Colors.blue, numberSound: 6),
              buildKey(color: Colors.purple, numberSound: 7),
              FlatButton(
                onPressed: () => playSound(1),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Alex Lee',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'JosefinSans'),
                ),
                color: Colors.grey[700],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
