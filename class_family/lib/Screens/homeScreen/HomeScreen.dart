import 'package:class_family/CustomWidgets/CustomCalendar.dart';
import 'package:class_family/CustomWidgets/CustomSearch.dart';
import 'package:class_family/CustomWidgets/HomeScreenBottom.dart';
import 'package:class_family/Screens/homeScreen/HomeScreenTop.dart';
import 'package:class_family/Screens/bottom/BottomCardsLayout.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenBackground.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenTopAndBottom.dart';
import 'package:class_family/Screens/login/loginScreenStacks/LoginSreenCombined.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AnimationController animationController;
    final size = MediaQuery.of(context).size;
    Color firstColor = Theme.of(context).secondaryHeaderColor;
    Color secondColor = Theme.of(context).backgroundColor;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children:<Widget>[
          HomeScreenBackground(),
          HomeScreenTopAndBottom(),
          //LoginScreenCombined()
        ],
      ),
    );
  }
}
