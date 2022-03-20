import 'package:flutter/material.dart';
import 'package:islami/Ahades/ahdeth.dart';
import 'package:islami/Ahades/hadeth_detalis.dart';

// ignore: must_be_immutable, camel_case_types
class itemHadeth extends StatelessWidget {
  Hadeth hadeth;

  itemHadeth(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadethDetalis.routeName,
            arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13),
        margin: EdgeInsets.all(12),
        child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
