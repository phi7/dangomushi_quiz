import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/advanced_quiz/advanced_quiz_page1.dart';

class AdvancedButton extends StatelessWidget {
  AdvancedButton({Key? key}) : super(key: key);
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
                  builder: (context) => AdvancedQuizPage1(),
                ));
          },
          child: Text("だんごむしはかせれべる"),
        ),
      ),
    );
  }
}