import 'package:flutter/material.dart';

class itemVerseHadeth extends StatelessWidget {
  String text;

  itemVerseHadeth(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13),
      margin: EdgeInsets.all(12),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
