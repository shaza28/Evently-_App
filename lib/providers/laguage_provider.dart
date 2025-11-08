import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale currentLanguage = const Locale('en'); // start language

  void changeAppLanguage(Locale newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  bool get isEnglish => currentLanguage.languageCode == 'en';
  bool get isArabic => currentLanguage.languageCode == 'ar';
}
