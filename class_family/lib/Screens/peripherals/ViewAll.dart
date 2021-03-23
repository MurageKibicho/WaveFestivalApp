import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: const Alignment(0.75, 0.86),
              radius: 0.14,
              colors: [
                Colors.white.withOpacity(0),
                Theme.of(context).backgroundColor,
              ]
          ),
        ),
        child: Stack(
          children: <Widget>[
            Text("View All",
              style: TextStyle(color: Colors.black),
            ),

            Positioned(
              right: 15,
              bottom: 15,
              child: GestureDetector(
                onTap: () {
                  homeScreenTopModel.closeNotifications(context);
                },
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
