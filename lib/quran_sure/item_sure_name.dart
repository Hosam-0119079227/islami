import 'package:flutter/material.dart';
import 'package:islami/sure_detalis/sure_detalis.dart';

// ignore: must_be_immutable, camel_case_types
class itemSure extends StatelessWidget {
  String name;
  int index;

  itemSure(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          sureDetalis.routeName,
          arguments: sureDetalisArgs(name, index),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
