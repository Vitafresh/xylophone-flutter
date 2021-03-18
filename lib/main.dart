import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();

  void playAudio(){
    print('Play audio!');
    //audioPlayer.play('assets/note1.wav',isLocal: true);
    //play();
    }

    void play() async {
      int result = await audioPlayer.play('assets/note1.wav',isLocal: true);
      if (result == 1) {
        // success
      }
    }

  }



  @override
  Widget build(BuildContext context) {
    //generateWordPairs().forEach(print);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            TextButton(
                onPressed: () {
                  print('Button pressed');
                },
                child: Text('Button')),
            TextButton(
                onPressed: () {
                  playAudio();
                },
                child: Text('Button2')),
          ],
        )),
      ),
    );
  }
}
