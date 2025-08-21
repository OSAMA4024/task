import 'package:flutter/foundation.dart';

class HomeViewModel with ChangeNotifier {
  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;

  void setBottomIndex(int index) {
    _bottomIndex = index;
    notifyListeners();
  }

// Add any other business logic related to the home screen here
// For example: fetching data, processing user actions, etc.
}