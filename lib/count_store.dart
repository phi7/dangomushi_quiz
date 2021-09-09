import 'package:flutter/material.dart';

class CounterStore extends ChangeNotifier{
  int counter = 0;

  void incrementCounter() {
      counter++;
      notifyListeners();
  }
}

