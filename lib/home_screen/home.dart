import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app0/home_screen/hadeth.dart';
import 'package:islami_app0/home_screen/quranTap/quran.dart';
import 'package:islami_app0/home_screen/radio.dart';
import 'package:islami_app0/home_screen/sebha.dart';
import 'package:islami_app0/my_them.dart';
import 'package:islami_app0/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.getBackeGroundImage(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'quran',
                  backgroundColor: My_ThemData.colorgold),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'sebha',
                  backgroundColor: My_ThemData.colorgold),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'radio',
                  backgroundColor: My_ThemData.colorgold),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeh'),
                  ),
                  label: 'hadeth',
                  backgroundColor: My_ThemData.colorgold),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: 'settings',
                  backgroundColor: My_ThemData.colorgold)
            ],
          ),
          body: taps[currentIndex],
        ),
      ],
    );
  }

  List<Widget> taps = [
    QuranTap(),
    SebhaTap(),
    RadioTap(),
    HadethTap(),
    SettingsTap()
  ];
}
