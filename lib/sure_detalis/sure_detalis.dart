import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sure_detalis/item_verse.dart';

class sureDetalis extends StatefulWidget {
  static const routeName = 'sure_detalis';

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
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    height: 1,
                    color: Theme.of(context).primaryColor,
                  );
                },
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

class sureDetalisArgs {
  String name;
  int index;

  sureDetalisArgs(this.name, this.index);
}
