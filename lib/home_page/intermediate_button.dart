import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_quiz_page1.dart';

class IntermediateButton extends StatelessWidget {
  IntermediateButton({Key? key}) : super(key: key);
  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 256,
        height: 32,
        child: ElevatedButton(
          onPressed: () {
            _player.play('sound1.mp3');
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IntermediateQuizPage1(),
                ));
          },
          child: Text("ちゅうがくせいれべる"),
        ),
      ),
    );
  }
}