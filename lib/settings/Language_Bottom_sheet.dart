import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/provider/app_provider.dart';

class languageBottom extends StatefulWidget {
  @override
  State<languageBottom> createState() => _languageBottomState();
}

class _languageBottomState extends State<languageBottom> {
  //var provider = Provider.of<appProvider>(context);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(onTap: () {}, child: getLanguageRow('English', true)),
          InkWell(onTap: () {}, child: getLanguageRow('الــعــربــبــه', false))
        ],
      ),
    );
  }

  Widget getLanguageRow(String text, bool isSelected) {
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
