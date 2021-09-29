import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../beginner_quiz/beginner_quiz_page0.dart';

class BeginnerButton extends StatelessWidget {
  BeginnerButton({Key? key}) : super(key: key);
  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      child: SizedBox(
        width: deviceWidth*0.6,
        height: deviceHeight*0.04,
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
