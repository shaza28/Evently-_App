import 'package:evently_app/core/resourses/constant_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static late SharedPreferences prefs;
  static Future<void> init()async{
   prefs=await SharedPreferences.getInstance();
}
  static void saveTheme(ThemeMode themeMode) {
    String savedTheme = themeMode == ThemeMode.light ? "Light" : "Dark";
     prefs.setString(CacheConstant.themeKey, savedTheme);
  }
  static ThemeMode? getSavedTheme()  {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedTheme = prefs.getString(CacheConstant.themeKey);

    if (savedTheme == null) {
      return null;
    }

    if (savedTheme == "Light") {
      return ThemeMode.light;
    } else if (savedTheme == "Dark") {
      return ThemeMode.dark;
    }

    return null;
  }

  static void savedLanguage(String language){
    prefs.setString(CacheConstant.languageKey,language);
  }
static String? getSavedLanguage(){
    String?savedLanguage=prefs.getString(CacheConstant.languageKey);
   return savedLanguage;
  }




}
