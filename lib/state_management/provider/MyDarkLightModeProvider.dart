import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDarkLightModeProvider extends ChangeNotifier {
  ThemeMode _isThemeMode = ThemeMode.light;

  ThemeMode get isThemeMode => _isThemeMode;

  void toggleThemeMode(themeMode) {
    _isThemeMode = themeMode; // Update the theme mode based on the passed value
    notifyListeners(); // Notify listeners about the change
  }
}
