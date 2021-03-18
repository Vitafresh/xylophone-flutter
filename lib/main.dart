import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  final AudioCache player = AudioCache();

  play() async {
    int result = await audioPlayer.play('assets/note1.wav', isLocal: true);
    if (result == 1) {
      // success
      print('Sucess - played!');
    }
  }

  void playNote(int noteNum){
    print('Play note $noteNum');
    player.play('note$noteNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[100],
                  child: TextButton(
                      onPressed: () {
                        playNote(1);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[300],
                  child: TextButton(
                      onPressed: () {
                        playNote(2);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[400],
                  child: TextButton(
                      onPressed: () {
                        playNote(3);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[500],
                  child: TextButton(
                      onPressed: () {
                        playNote(4);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[600],
                  child: TextButton(
                      onPressed: () {
                        playNote(5);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[700],
                  child: TextButton(
                      onPressed: () {
                        playNote(6);
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[900],
                  child: TextButton(
                      onPressed: () {
                        playNote(7);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
