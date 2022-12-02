import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routNmae = 'home';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'home',
        style: TextStyle(fontSize: 22),
      ),
      centerTitle: true,
    );
  }
}
