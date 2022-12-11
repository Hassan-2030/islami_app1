import 'package:flutter/material.dart';

class My_ThemData {
  static Color colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorgold = Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightThem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorblack),
          subtitle1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: colorgold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorgold,
          selectedItemColor: colorblack,
          unselectedItemColor: Colors.white));

  static ThemeData darkThem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      textTheme: TextTheme(headline1: TextStyle(fontSize: 30)));
}
