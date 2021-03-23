import 'package:class_family/CustomWidgets/HomeScreenBottom.dart';
import 'package:class_family/Screens/bottom/BottomCardsLayout.dart';
import 'package:class_family/Screens/homeScreen/HomeScreenTop.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenPeripherals.dart';
import 'package:flutter/material.dart';
class HomeScreenTopAndBottom extends StatefulWidget {
  @override
  _HomeScreenTopAndBottomState createState() => _HomeScreenTopAndBottomState();
}

class _HomeScreenTopAndBottomState extends State<HomeScreenTopAndBottom> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Wrap(
          spacing: 8,
          children: <Widget>[
            HomeScreenTop(),
            SizedBox(
              height: 10,
            ),

          ],
        ),
        //HomeScreenPeripherals(),
      ],
    );
  }
}
