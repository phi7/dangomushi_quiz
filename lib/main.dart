import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'count_store.dart';
import 'home_page/home.dart';
import 'package:flutter/foundation.dart';

const Map<String, String> UNIT_ID = kReleaseMode
    ? {
        'ios': 'ca-app-pub-8435123425900656/7849378003',
        'android': 'ca-app-pub-8435123425900656/2309083199',
      }
    : {
        'ios': 'ca-app-pub-3940256099942544/2934735716',
        'android': 'ca-app-pub-3940256099942544/6300978111',
      };

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  //向き指定
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, //縦固定
  ]);
  runApp(
    MyApp(),
  );
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
        home: MyHomePage(title: 'めざせ　だんごむし　ますたー！!'),
      ),
    );
  }
}
