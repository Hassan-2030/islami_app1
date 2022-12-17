import 'package:flutter/material.dart';
import 'package:islami_app0/my_them.dart';
import 'package:islami_app0/provider/my_provider.dart';
import 'package:islami_app0/settings/theme_mode_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'languge_bottom_sheet.dart';

class SettingsTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Language',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: My_ThemData.colorgold),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              ShowLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: My_ThemData.colorgold),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                pro.langugeCode == 'en' ? 'Englesh' : 'Arabic',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Theme',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: My_ThemData.colorgold),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              ShowThemeMoodeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: My_ThemData.colorgold),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }

  void ShowThemeMoodeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeModeBottomSheet();
        });
  }
}
