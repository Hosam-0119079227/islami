import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/settings/Language_Bottom_sheet.dart';
import 'package:islami/settings/Them_Bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../home/provider/app_provider.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    // var provider;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Language',
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 23),
        ),
        InkWell(
          onTap: () {
            showLangeuageBottomShet(context);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 13),
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: Text(
              'English',
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
            ),
          ),
        ),
        Text(
          'Theme',
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 23),
        ),
        InkWell(
          onTap: () {
            showThemBottomShet(context);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 13),
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: Text(
              provider.themeMode == ThemeMode.light ? 'Light' : 'Dark',
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }

  void showThemBottomShet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (buildContext) {
        return ThemBottomState();
      },
    );
  }
}

void showLangeuageBottomShet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (buildContext) {
      return languageBottom();
    },
  );
}
