import 'package:flutter/material.dart';
import 'package:islami_app0/my_them.dart';
import 'package:islami_app0/sura_ditails/sura_ditails_itme.dart';
import 'package:provider/provider.dart';

import '../provider/sura_provider.dart';

class SuraDitailsScreen extends StatelessWidget {
  static const String routName = 'suraditails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDitailsArgs;

    return ChangeNotifierProvider(
      create: (context) => SuraProvider()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<SuraProvider>(context);

        return Stack(children: [
          Image.asset(
            'assets/images/bg.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                '${args.Suraname}',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: provider.verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: My_ThemData.colorgold, width: 2),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25))),
                    child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                              color: My_ThemData.colorgold,
                              endIndent: 40,
                              indent: 40,
                            ),
                        itemCount: provider.verses.length,
                        itemBuilder: (_, index) {
                          return SuraDitailsItme(provider.verses[index]);
                        }),
                  ),
          )
        ]);
      },
    );
  }
}

class SuraDitailsArgs {
  String Suraname;
  int index;

  SuraDitailsArgs(this.Suraname, this.index);
}
