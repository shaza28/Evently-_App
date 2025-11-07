import 'package:flutter/material.dart';

class ConfigProvider extends ChangeNotifier{
  ThemeMode currentTheme=ThemeMode.light;//start theme mode






void changeAppTheme(ThemeMode newTheme){
  if (currentTheme==newTheme)
    return ;
  currentTheme=newTheme;
  notifyListeners();
}
bool get isDark => currentTheme==ThemeMode.dark;
}
