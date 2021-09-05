import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? _pref;
  var _themeData = AppTheme.lightTheme;

  get getTheme => _themeData;

  setTheme(bool isLightTheme) {
    _themeData = isLightTheme ? AppTheme.lightTheme : AppTheme.darkTheme;
    _saveToPrefs(isLightTheme);
    notifyListeners();
  }

  ThemeProvider() {
    _loadFromPrefs();
  }

  _initPrefs() async {
    if (_pref == null) _pref = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    final result = _pref!.getBool(key) ?? true;
    setTheme(result);
  }

  _saveToPrefs(bool isLightTheme) async {
    await _initPrefs();
    _pref!.setBool(key, isLightTheme);
  }
}
