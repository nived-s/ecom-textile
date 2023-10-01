import 'package:flutter/material.dart';

class MainScreenNotifier extends ChangeNotifier {
  int _pageIndex = 0;

  // Getter
  int get pageIndex => _pageIndex;

  // Setter
  set pageIndex(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }
}
