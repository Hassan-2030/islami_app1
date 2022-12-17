import 'package:flutter/material.dart';

class My_ThemData {
  static Color colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorgold = Color.fromRGBO(183, 147, 95, 1.0);
  static Color colorWhit = Color.fromRGBO(255, 255, 255, 1.0);
  static Color colorRed = Color.fromRGBO(255, 0, 0, 1.0);
  static Color colorPrimaryDark = Color.fromRGBO(20, 26, 46, 1.0);
  static Color colorYellow = Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData lightThem = ThemeData(
      primaryColor: colorgold,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: colorgold,
        onPrimary: colorWhit,
        secondary: colorblack,
        onSecondary: colorWhit,
        error: colorRed,
        onError: colorWhit,
        background: Colors.transparent,
        onBackground: colorblack,
        surface: Colors.grey,
        onSurface: colorWhit,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: colorblack)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorblack),
          subtitle1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: colorgold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorgold,
          selectedItemColor: colorblack,
          unselectedItemColor: colorWhit));

  static ThemeData darkThem = ThemeData(
      primaryColor: colorPrimaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: colorPrimaryDark,
        onPrimary: colorWhit,
        secondary: colorYellow,
        onSecondary: colorWhit,
        error: colorRed,
        onError: colorWhit,
        background: Colors.transparent,
        onBackground: colorYellow,
        surface: Colors.grey,
        onSurface: colorWhit,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: colorWhit)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorWhit),
          subtitle1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: colorYellow)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorPrimaryDark,
          selectedItemColor: colorYellow,
          unselectedItemColor: colorWhit));
}
