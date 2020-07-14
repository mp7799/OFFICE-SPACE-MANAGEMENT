import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;
  
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}

class Themes {

  ThemeData darkTheme() {
    return ThemeData.dark();
  }

  ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
    );
  }
}
