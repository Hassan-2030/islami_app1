import 'package:flutter/material.dart';
import 'package:islami_app0/sura_ditails/suraditails.dart';

import 'hadeth_details/hadedth_details.dart';
import 'home_screen/home.dart';
import 'my_them.dart';

void main() {
  runApp(Myapp0());
}

class Myapp0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDitailsScreen.routName: (c) => SuraDitailsScreen(),
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen()
      },
      theme: My_ThemData.lightThem,
      darkTheme: My_ThemData.darkThem,
      themeMode: ThemeMode.light,
    );
  }
}
