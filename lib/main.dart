import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app0/provider/my_provider.dart';
import 'package:islami_app0/sura_ditails/suraditails.dart';
import 'package:provider/provider.dart';

import 'hadeth_details/hadedth_details.dart';
import 'home_screen/home.dart';
import 'my_them.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: Myapp0()));
}

class Myapp0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale(provider.langugeCode),
        supportedLocales: [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // Spanish, no country code
        ],
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routName,
        routes: {
          HomeScreen.routName: (context) => HomeScreen(),
          SuraDitailsScreen.routName: (c) => SuraDitailsScreen(),
          HadethDetailsScreen.routName: (context) => HadethDetailsScreen()
        },
        theme: My_ThemData.lightThem,
        darkTheme: My_ThemData.darkThem,
        themeMode: provider.mood);
  }
}
