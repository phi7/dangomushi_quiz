import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/count_store.dart';
import 'beginner_quiz_page1.dart';

class BeginnerQuizPage0 extends StatelessWidget {
  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Q１ダンゴムシはどっち？"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 154,
                  height: 230,
                  child: Image.asset(
                    "images/beginner_quiz_images/dango.jpg",
                  ),
                ),
                Container(
                  child: Image.asset(
                    "images/beginner_quiz_images/bd1.png",
                    width: 154,
                    height: 230,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 128,
                  height: 32,
                  child: ElevatedButton(
                      onPressed: () {
                        //正解か不正解のコード
                        _player.play('huseikai.mp3');
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('不正解・・・'),
                              actions: <Widget>[
                                ElevatedButton(
                                    child: Text('次の問題へ'),
                                    onPressed: () {
                                      //次の問題への画面遷移
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BeginnerQuizPage1(),
                                          ));
                                    }),
                              ],
                            );
                          },
                        );
                      },
                      child: Text("A")),
                ),
                Consumer<CounterStore>(builder: (context, model, child) {
                  return SizedBox(
                    width: 128,
                    height: 32,
                    child: ElevatedButton(
                        onPressed: () {
                          _player.play('seikai.mp3');
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('正解！'),
                                actions: <Widget>[
                                  ElevatedButton(
                                      child: Text('次の問題へ'),
                                      onPressed: () {
                                        model.incrementCounter();
                                        print(model.counter);
                                        //次の問題への画面遷移
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BeginnerQuizPage1(),
                                            ));
                                      }),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("B")),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
