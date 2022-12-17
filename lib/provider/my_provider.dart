import 'package:flutter/material.dart';
import 'package:islami_app0/my_them.dart';

class MyProvider extends ChangeNotifier {
  String langugeCode = 'en';

  ThemeMode mood = ThemeMode.light;
  Color selcted = My_ThemData.colorgold;

  void changLanguage(String lang) {
    if (langugeCode == lang) return;
    langugeCode = lang;
    notifyListeners();
  }

  String getBackeGroundImage() {
    if (mood == ThemeMode.light) {
      return 'assets/images/bg.png';
    }
    return 'assets/images/dark_bg.png';
  }

  void changeThemeMode(ThemeMode modee) {
    mood = modee;
    notifyListeners();
  }

  Color getSelectedColor(String lang) {
    return langugeCode == lang ? My_ThemData.colorgold : My_ThemData.colorblack;
  }
}
