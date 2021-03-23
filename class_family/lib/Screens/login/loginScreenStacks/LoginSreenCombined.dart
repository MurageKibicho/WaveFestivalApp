import 'package:class_family/Screens/login/loginScreenStacks/beachContainer.dart';
import 'package:class_family/Screens/login/loginScreenStacks/horizonBackground.dart';
import 'package:class_family/Screens/login/loginScreenStacks/seaContainer.dart';
import 'package:flutter/material.dart';
class LoginScreenCombined extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        HorizonBackground(),
      ],
    );
  }
}
