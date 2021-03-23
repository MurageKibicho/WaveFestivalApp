import 'package:class_family/Clippers/HomeScreenBottomCustomClipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreenBottom extends StatefulWidget {
  final Size size;
  final double offset;

  const HomeScreenBottom({Key key, this.size, this.offset}) : super(key: key);

  @override
  _HomeScreenBottomState createState() => _HomeScreenBottomState();
}

class _HomeScreenBottomState extends State<HomeScreenBottom> with TickerProviderStateMixin {

  AnimationController animationController;
  List <Offset> wavePoints = [];

  @override
  void initState() {
    animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 5000))
      ..addListener(() {
        wavePoints.clear();
        final double waveSpeed = animationController.value * 3000;
        final double fullSphere = animationController.value * math.pi * 2;
        final double normalizer = math.cos(fullSphere);
        final double waveWidth = math.pi/300;
        final double waveHeight = 30.0;
        for (int i = 0; i <= widget.size.width.toInt(); i++) {
          double calculatedPoints = math.sin((waveSpeed - i) * waveWidth);
          wavePoints.add(
            Offset(
              i.toDouble(),
              calculatedPoints * waveHeight * normalizer + widget.offset,
            ),
          );
        }
      });
    animationController.repeat();
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Color firstColor = Colors.amber;
    Color secondColor = Theme.of(context).primaryColor;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return ClipPath(
          clipper: HomeScreenBottomCustomClipper(
            waveList: wavePoints,
          ),
          child: Container(
            height: screenHeight /2,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  firstColor,
                  secondColor,
                ],
              ),
            ),

          ),
        );
      },
    );
  }
}
