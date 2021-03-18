import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();


  play() async {
    int result = await audioPlayer.play('assets/note1.wav', isLocal: true);
    if (result == 1) {
      // success
      print('Sucess - played!');
    }
  }

  void playNote(int noteNum){
    print('Play note $noteNum');
    final AudioCache player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildRowKey({int noteNum, Color colorRow})
  {
    return
      Expanded(
      child: Container(
        //width: double.infinity,
        color: colorRow,
        child: TextButton(
            onPressed: () {
              playNote(noteNum);
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              buildRowKey(noteNum: 1, colorRow: Colors.blue[100]),
              buildRowKey(noteNum: 2, colorRow: Colors.blue[300]),
              buildRowKey(noteNum: 3, colorRow: Colors.blue[400]),
              buildRowKey(noteNum: 4, colorRow: Colors.blue[600]),
              buildRowKey(noteNum: 5, colorRow: Colors.blue[700]),
              buildRowKey(noteNum: 6, colorRow: Colors.blue[800]),
              buildRowKey(noteNum: 7, colorRow: Colors.blue[900]),

            ],
          ),
        ),
      ),
    );
  }
}
