import 'package:flutter/material.dart';

class AppBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/background1.jpg"),
            fit: BoxFit.cover,
      )),
    );
  }
}
