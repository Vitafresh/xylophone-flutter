import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  static AudioCache player = AudioCache();

  play() async {
    int result = await audioPlayer.play('assets/note1.wav', isLocal: true);
    if (result == 1) {
      // success
      print('Sucess - played!');
    }
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
                        print('Audio play');
                        player.play('note1.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[300],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note2.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[400],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note3.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[500],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note4.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[600],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note5.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[700],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note6.wav');
                      }),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.blue[900],
                  child: TextButton(
                      onPressed: () {
                        print('Audio play');
                        player.play('note7.wav');
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
