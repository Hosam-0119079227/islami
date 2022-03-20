import 'package:flutter/material.dart';
import 'package:islami/Ahades/ahdeth.dart';
import 'package:islami/Ahades/item_verse_hadeth.dart';
import 'package:provider/provider.dart';

import '../home/provider/app_provider.dart';

class hadethDetalis extends StatelessWidget {
  static const String routeName = 'hadethDetalis';
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    verses = hadeth.content;
    return Stack(
      children: [
        Image.asset(
          provider.getMainBackGround(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${hadeth.title}',
              style: Theme.of(context).textTheme.headline2,
            ),
            centerTitle: true,
          ),
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (_, index) {
                    return itemVerseHadeth(verses[index]);
                  },
                  itemCount: verses.length,
                ),
        ),
      ],
    );
  }
}
