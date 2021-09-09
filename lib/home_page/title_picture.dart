import 'package:flutter/material.dart';

class TitlePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
          Image.asset(
            "images/img_1.png",
            width: 888,
            height: 256,
          ),
          Image.asset(
            "images/img_2.png",
            height: 200.0,
            width: 200.0,
          ),
        ]),
      ),
    );
  }
}


/*
class RotateTitlePicture extends StatefulWidget {
  @override
  RotateTitlePictureState createState() => RotateTitlePictureState();
}

class RotateTitlePictureState extends State<RotateTitlePicture>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _turns;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _turns = _animationController!
        .drive(
      CurveTween(curve: Curves.linear),
    )
        .drive(
      Tween<double>(begin: 0, end: 1),
    );

    _animationController!.repeat();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return ClipRect(
      child: OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: screenHeight,
        maxHeight: screenHeight,
        child: RotationTransition(
          turns: _turns!,
          alignment: Alignment.center,
          child: Image.asset(
            'images/img_2.png',
            height: 200.0,
            width: 200.0,
          ),
        ),
      ),
    );
  }
}

 */
