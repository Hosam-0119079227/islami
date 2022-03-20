import 'package:flutter/material.dart';

class appProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void ChangeTheme(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  String getMainBackGround() {
    return themeMode == ThemeMode.light
        ? 'assets/image/main_backgrouned.png'
        : 'assets/image/Dark.png';
  }
}
