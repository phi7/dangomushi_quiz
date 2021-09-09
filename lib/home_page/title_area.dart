import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(
                "ダンゴムシ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 64,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "　クイズ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 64,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Image.asset(
                    "images/title_rolly_polly.png",
                    height: 64.0,
                    width: 64.0,
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
