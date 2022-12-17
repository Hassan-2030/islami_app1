import 'package:flutter/material.dart';
import 'package:islami_app0/home_screen/hadeth.dart';
import 'package:islami_app0/my_them.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Stack(children: [
      Image.asset(
        'assets/images/bg.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              border: Border.all(color: My_ThemData.colorgold, width: 3)),
          child: ListView.builder(
              itemCount: args.content.length,
              itemBuilder: (c, index) {
                return Text(
                  args.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: My_ThemData.colorblack),
                );
              }),
        ),
      )
    ]);
  }
}
