import 'package:flutter/cupertino.dart';
import "dart:math" as math;

class HomeScreenBottomCustomClipper extends CustomClipper<Path>{
final List <Offset> waveList;

  HomeScreenBottomCustomClipper({
      this.waveList});
  @override
  getClip(Size size) {
    final Path path = Path();
    final containerHeight = size.height;
    final containerWidth = size.width;
    //Get to third of screen
    
    path.addPolygon(waveList, false);
    path.lineTo(containerWidth, containerHeight);
    path.lineTo(0.0, containerHeight);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}