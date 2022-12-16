import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app0/my_them.dart';

import '../hadeth_details/hadedth_details.dart';

class HadethTap extends StatelessWidget {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Divider(
          color: My_ThemData.colorgold,
          thickness: 3,
        ),
        Text(
          'ahadeth',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        Divider(
          color: My_ThemData.colorgold,
          thickness: 3,
        ),
        Ahadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                          color: My_ThemData.colorgold,
                        ),
                    itemCount: Ahadeth.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, HadethDetailsScreen.routName,
                              arguments: Ahadeth[index]);
                        },
                        child: Text(
                          Ahadeth[index].title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: My_ThemData.colorblack),
                        ),
                      );
                    }),
              )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> Allahaeth = content.split('#\r\n');
    //for lop
    for (int i = 0; i < Allahaeth.length; i++) {
      String hadeth = Allahaeth[0];
      List<String> HadethLines = hadeth.split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      HadethData hadethData = HadethData(title, HadethLines);
      Ahadeth.add(hadethData);
    }
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData(this.title, this.content);
}
