import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/home_page/advanced_button.dart';
import 'package:quiz_app/home_page/beginner_button.dart';
import 'package:quiz_app/home_page/title_area.dart';
import 'package:quiz_app/home_page/title_picture.dart';
import '../count_store.dart';
import 'intermediate_button.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //タイトル用
            TitleArea(),
            //絵をのせる
            TitlePicture(),
            SizedBox(
              height: 32,
            ),
            //初級ボタン
            BeginnerButton(),
            SizedBox(
              height: 32,
            ),
            //中級ボタン
            IntermediateButton(),
            SizedBox(
              height: 32,
            ),
            //ダンゴム神ボタン
            AdvancedButton(),
          ],
        ),
      ),
    );
  }
}
