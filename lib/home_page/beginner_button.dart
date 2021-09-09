import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../beginner_quiz/beginner_quiz_page0.dart';

class BeginnerButton extends StatelessWidget {
  BeginnerButton({Key? key}) : super(key: key);
  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width:256,
        height: 32,
        child: ElevatedButton(
          onPressed: () {
            _player.play('sound1.mp3');
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BeginnerQuizPage0(),
                ));
          },
          child: Text("しょうがくせいれべる"),
        ),
      ),
    );
  }
}
