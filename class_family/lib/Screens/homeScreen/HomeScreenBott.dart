import 'package:class_family/Screens/bottom/BottomCardsLayout.dart';
import 'package:flutter/material.dart';

class HomeScreenBott extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight/3,
     width: screenWidth,
      child: Container(
        child: BottomCardsLayout(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
          color: Colors.white,
        ),
      ),


    );

  }
}
