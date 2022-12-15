import 'package:flutter/material.dart';
import 'package:islami_app0/my_them.dart';

import '../../sura_ditails/suraditails.dart';

class SuraNameItem extends StatelessWidget {
  String name;
  int index;

  SuraNameItem(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDitailsScreen.routName,
            arguments: SuraDitailsArgs(name, index));
      },
      child: Text(name,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: My_ThemData.colorblack)),
    );
  }
}
