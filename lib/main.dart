import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(Myapp0());
}

class Myapp0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routNmae,
      routes: {HomeScreen.routNmae: (context) => HomeScreen()},
    );
  }
}
