import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  late int selectedButton;
  MyProvider() {
    selectedButton = 0;
    setSelectedButton(selectedButton);
  }
  void setSelectedButton(int? index) {
    selectedButton = index ?? selectedButton;
    notifyListeners();
  }
}
