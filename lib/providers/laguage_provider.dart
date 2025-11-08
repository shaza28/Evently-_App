import 'package:evently_app/core/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale currentLanguage = Locale('en'); // القيمة الافتراضية

  LanguageProvider() {
    _loadSavedLanguage();
  }

  void _loadSavedLanguage() async {
    String? savedLangCode = await PrefsManager.getSavedLanguage();
    if (savedLangCode != null) {
      currentLanguage = Locale(savedLangCode);
      notifyListeners();
    }
  }


  void changeAppLanguage(Locale newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    PrefsManager.savedLanguage(currentLanguage.languageCode);
    notifyListeners();
  }

  bool get isEnglish => currentLanguage.languageCode == 'en';
  bool get isArabic => currentLanguage.languageCode == 'ar';
}

/*
import 'package:evently_app/core/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLanguage = PrefsManager.getSavedLanguage() ??"en"; // start language

  void changeAppLanguage(Locale newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    PrefsManager.savedLanguage(currentLanguage);
    notifyListeners();
  }

  bool get isEnglish => currentLanguage.languageCode == 'en';
  bool get isArabic => currentLanguage.languageCode == 'ar';
}
*/
