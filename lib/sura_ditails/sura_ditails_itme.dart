import 'package:flutter/material.dart';
import 'package:islami_app0/my_them.dart';

class SuraDitailsItme extends StatelessWidget {
  String ayaa;

  SuraDitailsItme(this.ayaa);

  @override
  Widget build(BuildContext context) {
    return Text(
      ayaa,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          fontSize: 20, color: My_ThemData.colorblack, letterSpacing: .65),
    );
  }
}
