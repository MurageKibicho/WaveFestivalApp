import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
class SeaContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height:screenHeight / 3,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0,0.9),
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).backgroundColor,
                Theme.of(context).accentColor,
              ],
            ),
          ),
        ),


      ],
    );
  }
}
