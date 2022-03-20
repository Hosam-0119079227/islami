import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'item_verse.dart';

// ignore: camel_case_types
class sureDetalis extends StatefulWidget {
  static const routeName = 'sure_detalis';

  sureDetalis({Key? key}) : super(key: key);

  @override
  State<sureDetalis> createState() => _sureDetalisState();
}

class _sureDetalisState extends State<sureDetalis> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as sureDetalisArgs;
    if (verses.isEmpty) loadFile(args.index);
    return Stack(children: [
      Image.asset(
        'assets/image/main_backgrouned.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              args.name,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        body: verses.length == 0
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (_, index) {
                  return itemVerse(verses[index]);
                },
                itemCount: verses.length,
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}

// ignore: camel_case_types
class sureDetalisArgs {
  String name;

  int index;

  sureDetalisArgs(this.name, this.index);
}
