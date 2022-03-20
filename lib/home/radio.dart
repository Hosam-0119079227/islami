import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/image/radio.png'),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              'إذاعة القرآن الكريم',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/image/skip.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
