import 'package:flutter/material.dart';
import 'package:islami_part2/Ahades/ahdeth.dart';
import 'package:islami_part2/Ahades/hadeth_detalis.dart';
import 'package:islami_part2/myThame.dart';
import 'package:islami_part2/sure_detalis/sure_detalis.dart';

import 'homeScreen.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      routes: {
        homeScreen.routeName: (buildContext) => homeScreen(),
        sureDetalis.routeName: (buildContext) => sureDetalis(),
        HadethTab.routeName: (buildContext) => HadethTab(),
        hadethDetalis.routeName: (buildContext) => hadethDetalis(),
      },
      initialRoute: homeScreen.routeName,
      theme: myTheme.lightTheme,
      darkTheme: myTheme.darkTheme,
    );
  }
}
