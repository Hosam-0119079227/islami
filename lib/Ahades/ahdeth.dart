import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Ahades/item_hadeth.dart';

class HadethTab extends StatefulWidget {
  static const String routeName = 'Hadeth_tab';

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> myAhedth = [];

  @override
  Widget build(BuildContext context) {
    if (myAhedth.isEmpty) {
      readHadethFile();
    }
    return Container(
      child: Column(
        children: [
          Image.asset('assets/image/hades_ic.png'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            'الـا حـــــاديــــــــث',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
                itemCount: myAhedth.length,
                itemBuilder: (context, index) {
                  return itemHadeth(myAhedth[index]);
                },
                separatorBuilder: (BuildContext, index) {
                  return Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 2,
                  );
                }),
          ),
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent = await rootBundle.loadString('assets/files/ah.txt');
    List<String> ahadeth = fileContent.split('#\r\n');
    for (int i = 0; i < ahadeth.length; i++) {
      String allhadeth = ahadeth[i];
      if (allhadeth.isEmpty) continue;
      allhadeth.trim();
      print(allhadeth);
      print('_________________________');
      List<String> lines = allhadeth.split('\n');
      if (lines[0].isEmpty) {
        lines.removeAt(0);
      }
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title, lines);
      myAhedth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(this.title, this.content);
}
