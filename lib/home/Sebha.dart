import 'package:flutter/material.dart';
import 'package:islami/myThame.dart';

class Sabha extends StatefulWidget {
  @override
  State<Sabha> createState() => _SabhaState();
}

class _SabhaState extends State<Sabha> {
  int counter = 0;
  List<String> Tsabhalist = [
    'سبحان الله',
    'الحمد الله',
    'لا اله الا الله',
    'الله اكبر',
    'استفر الله',
    'لا حول ولا قوه الا بالله',
    'سبحان الله وبحمده',
    'سبحان الله العظيم',
    'اللهــم صل على نــبــيــنـا مـحـمـد'
  ];
  int index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Color(0xffdec197),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'عــدد الــتــســبــيـــحـــات',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xffdec197),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: myTheme.lightprimary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '${Tsabhalist[index]}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/image/head_of_seb7a.png'),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09),
                  child: InkWell(
                      onTap: () {
                        onTasbehClick();
                      },
                      child: Transform.rotate(
                          angle: angle,
                          child:
                              Image.asset('assets/image/body_of_seb7a.png')))),
            ],
          ),
        ],
      ),
    );
  }

  void onTasbehClick() {
    counter++;
    if (counter % 30 == 0) {
      index++;
    }
    if (counter % 270 == 0) {
      index = 0;
    }
    setState(() {
      angle += 20;
    });
  }
}
