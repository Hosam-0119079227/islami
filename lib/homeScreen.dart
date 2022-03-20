import 'package:flutter/material.dart';
import 'package:islami/Ahades/ahdeth.dart';
import 'package:islami/home/Sebha.dart';
import 'package:islami/home/provider/app_provider.dart';
import 'package:islami/home/radio.dart';
import 'package:islami/settings/setting.dart';
import 'package:provider/provider.dart';

import 'quran_sure/ic_quran.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

// ignore: camel_case_types
class _homeScreenState extends State<homeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
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
            title: Center(
              child: Text(
                'Islami',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/quran_ici.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/hadeth_ici.png')),
                    label: 'Ahades'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/sebha.png')),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Setting'),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    icQuran(),
    HadethTab(),
    radio(),
    Sabha(),
    setting()
  ];
}
