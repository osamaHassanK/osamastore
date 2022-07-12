import 'package:flutter/cupertino.dart';
import 'package:osamastore/services/darkthemeprefs.dart';

class DarkThemeProvider with ChangeNotifier{
  DarkThemePrefs darkThemePrefs= DarkThemePrefs();
  bool _darktheme = false;
  bool getDarkTheme(){
    return _darktheme;
  }

  set setDarkTheme(bool value){
    _darktheme =value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}