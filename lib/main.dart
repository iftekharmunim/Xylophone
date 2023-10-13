import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey(
      {required Color backgroundColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
         ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildKey(backgroundColor: Colors.red, soundNumber: 1),
                  buildKey(backgroundColor: Colors.yellow, soundNumber: 2),
                  buildKey(backgroundColor: Colors.orange, soundNumber: 3),
                  buildKey(backgroundColor: Colors.blueAccent, soundNumber: 4),
                  buildKey(backgroundColor: Colors.green, soundNumber: 5),
                  buildKey(backgroundColor: Colors.purple, soundNumber: 6),
                  buildKey(backgroundColor: Colors.teal, soundNumber: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
