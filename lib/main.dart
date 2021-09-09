import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'count_store.dart';
import 'home_page/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //向き指定
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,//縦固定
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ダンゴムシクイズ',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: MyHomePage(title: 'めざせ　だんごむし　ますたー！'),
      ),
    );
  }
}


