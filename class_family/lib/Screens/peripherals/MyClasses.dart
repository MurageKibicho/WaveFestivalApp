import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyClasses extends StatefulWidget {
  @override
  _MyClassesState createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final homeScreenModel = Provider.of<HomeScreenTopModel>(context);
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: RadialGradient(
            center: const Alignment(-0.3, 0.9),
            radius: 0.15,
            colors: [
              Colors.white.withOpacity(0),
              Theme.of(context).secondaryHeaderColor,
            ]
        ),
      ),
      child: Stack(
        children: <Widget>[
          Text("My Classes",
            style: TextStyle(color: Colors.black),
          ),

          Positioned(
            left: 110,
            bottom: 5,
            child: GestureDetector(
              onTap: () {
                homeScreenModel.closeNotifications(context);
              },
              child: Container(
                height: 100,
                width: 110,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );



  }
}
