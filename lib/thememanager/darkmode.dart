import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

const sharedPrefName = 'DarkMode';

class ThemeManager extends ChangeNotifier {
  bool _themeStatus;
  SharedPreferences pref;

  get themeInfo => _themeStatus;

  ThemeManager() {
    _themeStatus = false;
    _getSharedpref();
  }
  void themeToggeler() {
    _themeStatus = !_themeStatus;
    _setSharedPref();
    notifyListeners();
  }

  _initShared() async {
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
  }

  _getSharedpref() async {
    await _initShared();
    _themeStatus = pref.getBool('themeStatus');
    notifyListeners();
  }

  _setSharedPref() async {
    await _initShared();
    pref.setBool('themeStatus', _themeStatus);
  }
}
