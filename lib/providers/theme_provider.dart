import 'package:evently_app/core/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class ConfigProvider extends ChangeNotifier{
  ThemeMode currentTheme= PrefsManager.getSavedTheme() ??ThemeMode.light;
  //ThemeMode currentTheme=ThemeMode.light;//start theme mode






void changeAppTheme(ThemeMode newTheme){
  if (currentTheme==newTheme)
    return ;
  currentTheme=newTheme;
  PrefsManager.saveTheme(currentTheme);
  notifyListeners();
}
bool get isDark => currentTheme==ThemeMode.dark;
}
