import 'package:flutter/material.dart';
import 'package:toku/componants/category.dart';
import 'package:toku/screens/color.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/number.dart';
import 'package:toku/screens/phrases.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff49332B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffF99537),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NumberScreen()));
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff528135),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyMembers()));
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff7D3F9E),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsPage()));
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff47A5C8),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Phrases()));
            },
          ),
        ],
      ),
    );
  }
}
