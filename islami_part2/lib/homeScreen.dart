import 'package:flutter/material.dart';

import 'Ahades/ahdeth.dart';
import 'home/Sebha.dart';
import 'home/radio.dart';
import 'quran_sure/ic_quran.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                'ISLAMI',
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
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/ic_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/quran.png')),
                    label: 'ahades'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/sebha.png')),
                    label: 'Sebha'),
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
    radio(),
    HadethTab(),
    Sabha(),
  ];
}
