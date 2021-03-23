import 'package:flutter/material.dart';
class HomeScreenBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Theme.of(context).primaryColor,
    );
  }
}
