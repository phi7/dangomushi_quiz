import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ad_for_banner.dart';
import 'app_background.dart';
import 'count_store.dart';

class QuestionPageTemplate extends StatelessWidget {
  QuestionPageTemplate(this.question, this.c1, this.c2, this.c3, this.flag1,
      this.flag2, this.flag3, this.widget);

  final String question;
  final String c1;
  final String c2;
  final String c3;
  final bool flag1;
  final bool flag2;
  final bool flag3;
  final Widget widget;
  final double w = 256;
  final double h = 64;

  final AudioCache _player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AppBackGround(),
        Center(
          child: Consumer<CounterStore>(builder: (context, model, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column()),
                //問題
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    width: 256,
                    height: 128,
                    color: Colors.black.withOpacity(0.6),
                    child: Center(
                      child: Text(
                        question,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                //三択
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: w,
                  height: h,
                  child: ElevatedButton(
                      onPressed: () {
                        showConfirmDialog1(context, flag1, widget);
                        flag1 ? model.incrementCounter() : Container();
                        flag1
                            ? _player.play('seikai.mp3')
                            : _player.play('huseikai.mp3');
                      },
                      child: Text(
                        c1,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: w,
                  height: h,
                  child: ElevatedButton(
                      onPressed: () {
                        showConfirmDialog2(context, flag2, widget);
                        flag2 ? model.incrementCounter() : Container();
                        flag2
                            ? _player.play('seikai.mp3')
                            : _player.play('huseikai.mp3');
                      },
                      child: Text(
                        c2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: w,
                  height: h,
                  child: ElevatedButton(
                      onPressed: () {
                        showConfirmDialog3(context, flag3, widget);
                        flag3 ? model.incrementCounter() : Container();
                        flag3
                            ? _player.play('seikai.mp3')
                            : _player.play('huseikai.mp3');
                      },
                      child: Text(
                        c3,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AdForBanner(),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ]),
    );
  }
}

Future showConfirmDialog1(BuildContext context, flag1, widget) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: flag1 ? Text('正解！') : Text('不正解・・・'),
        actions: <Widget>[
          ElevatedButton(
              child: Text('次の問題へ'),
              onPressed: () {
                //次の問題への画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget,
                    ));
              }),
        ],
      );
    },
  );
}

Future showConfirmDialog2(BuildContext context, flag2, widget) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: flag2 ? Text('正解！') : Text('不正解・・・'),
        actions: <Widget>[
          ElevatedButton(
              child: Text('次の問題へ'),
              onPressed: () {
                //次の問題への画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget,
                    ));
              }),
        ],
      );
    },
  );
}

Future showConfirmDialog3(BuildContext context, flag3, widget) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: flag3 ? Text('正解！') : Text('不正解・・・'),
        actions: <Widget>[
          ElevatedButton(
              child: Text('次の問題へ'),
              onPressed: () {
                //次の問題への画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget,
                    ));
              }),
        ],
      );
    },
  );
}
