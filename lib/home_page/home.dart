import 'package:flutter/material.dart';
import 'package:quiz_app/ad_for_banner.dart';
import 'package:quiz_app/home_page/advanced_button.dart';
import 'package:quiz_app/home_page/beginner_button.dart';
import 'package:quiz_app/home_page/title_area.dart';
import 'package:quiz_app/home_page/title_picture.dart';
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
            Expanded(child: Container()),
            //初級ボタン
            BeginnerButton(),
            Expanded(child: Container()),
            //中級ボタン
            IntermediateButton(),
            Expanded(child: Container()),
            //ダンゴム神ボタン
            AdvancedButton(),
            Expanded(child: Container()),
            Expanded(child: Container()),
            AdForBanner(),
          ],
        ),
      ),
    );
  }
}
