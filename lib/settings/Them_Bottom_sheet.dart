import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/provider/app_provider.dart';

class ThemBottomState extends StatefulWidget {
  @override
  State<ThemBottomState> createState() => _ThemBottomState();
}

class _ThemBottomState extends State<ThemBottomState> {
  //var provider = Provider.of<appProvider>(context);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.ChangeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child:
                  getThemRow('Light', provider.themeMode == ThemeMode.light)),
          InkWell(
            onTap: () {
              provider.ChangeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: getThemRow('Dark', provider.themeMode == ThemeMode.dark),
          )
        ],
      ),
    );
  }

  Widget getThemRow(String text, bool isSelected) {
    if (isSelected) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: Theme.of(context).primaryColor, fontSize: 22),
            ),
            Icon(Icons.check),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              text,
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 22),
            ),
          ],
        ),
      );
    }
  }
}
