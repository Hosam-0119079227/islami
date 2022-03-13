import 'package:flutter/material.dart';
import 'package:islami/myThame.dart';
import 'package:islami/sure_detalis/sure_detalis.dart';

import 'homeScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        homeScreen.routeName: (buildContext) => homeScreen(),
        sureDetalis.routeName: (buildContext) => sureDetalis()
      },
      initialRoute: homeScreen.routeName,
      theme: myTheme.lightTheme,
      darkTheme: myTheme.darkTheme,
    );
  }
}
