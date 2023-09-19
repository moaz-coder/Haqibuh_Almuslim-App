import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void enableThemeLight() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void enableThemeDark() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String getBackgroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/default_bg.png'
        : "assets/images/dark_bg.png";
  }
}
