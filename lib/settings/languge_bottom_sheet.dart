import 'package:flutter/material.dart';
import 'package:islami_app0/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Englesh',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: provider.getSelectedColor('en'))),
                Icon(
                  Icons.done,
                  size: 30,
                  color: provider.getSelectedColor('en'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changLanguage('ar');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arabic',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: provider.getSelectedColor('ar')),
                ),
                Icon(Icons.done,
                    size: 30, color: provider.getSelectedColor('ar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
