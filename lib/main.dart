import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {homeScreen.routeName: (buildContext) => homeScreen()},
      initialRoute: homeScreen.routeName,
    );
  }
}
