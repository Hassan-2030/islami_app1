import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app0/my_them.dart';
import 'package:islami_app0/sura_ditails/sura_ditails_itme.dart';

class SuraDitailsScreen extends StatefulWidget {
  static const String routName = 'suraditails';

  @override
  State<SuraDitailsScreen> createState() => _SuraDitailsState();
}

class _SuraDitailsState extends State<SuraDitailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDitailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      color: My_ThemData.colorgold,
                      endIndent: 40,
                      indent: 40,
                    ),
                itemCount: verses.length,
                itemBuilder: (_, index) {
                  return SuraDitailsItme(verses[index]);
                }),
      )
    ]);
  }

  void loadFile(int index) async {
    var content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDitailsArgs {
  String Suraname;
  int index;

  SuraDitailsArgs(this.Suraname, this.index);
}
