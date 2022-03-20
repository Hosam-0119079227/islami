import 'package:flutter/material.dart';
import 'package:islami/Ahades/ahdeth.dart';
import 'package:islami/Ahades/hadeth_detalis.dart';
import 'package:islami/home/provider/app_provider.dart';
import 'package:islami/myThame.dart';
import 'package:islami/sure_detalis/sure_detalis.dart';
import 'package:provider/provider.dart';

import 'homeScreen.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (bulidContext) {
        return appProvider();
      },
      child: myApp()));
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
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
      darkTheme: myTheme.DarkTheme,
      themeMode: provider.themeMode,
    );
  }
}
