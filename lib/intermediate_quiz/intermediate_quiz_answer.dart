
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/ad_for_banner.dart';
import '../count_store.dart';

class IntermediateQuizAnswer extends StatelessWidget {
  IntermediateQuizAnswer({Key? key}) : super(key: key);

  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterStore>(builder: (context, model, child) {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column()),
                Text(
                  "せいかいすう",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  "${model.counter}／5",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                model.counter == 0
                    ? Text(
                  "ぜんぶまちがえるなんて・・・😭",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                model.counter == 1
                    ? Text(
                  "${model.counter}もんせいかい・・・😢　そういうひもあるよね",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                model.counter == 2
                    ? Text(
                  "${model.counter}もんせいかい・・・😑　もうちょっとがんばれ",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                model.counter == 3
                    ? Text(
                  "${model.counter}もんせいかい😌",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                model.counter == 4
                    ? Text(
                  "${model.counter}もんせいかい🥺　おしい！",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                model.counter == 5
                    ? Text(
                  "ぜんもんせいかい　やったね！😊　ちゅうがくせいれべる　クリアだ！",
                  style: TextStyle(fontSize: 24),
                )
                    : Container(),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      _player.play('sound1.mp3');
                      Navigator.popUntil(context, (route) => route.isFirst);
                      model.counter = 0;
                    },
                    child: Text("もういちど　ちょうせんする！")),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AdForBanner(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
