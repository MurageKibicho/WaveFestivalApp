import 'package:flutter/material.dart';

class SunLightCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    final width = size.width;
    final height = size.height;

    path.lineTo(width * 0.3, height * 0.09);
    path.lineTo(0, height * 0.2);
    path.lineTo(width * 0.18, height * 0.25);
    path.lineTo(0, height * 0.31);
    path.lineTo(width * 0.14, height * 0.4);
    path.lineTo(0, height * 0.39);
    path.lineTo(0, height * 0.6);
    path.lineTo(width * 0.14, height * 0.6);
    path.lineTo(0, height * 0.7);
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, height * 0.7);
    path.lineTo(width * 0.9, height*0.6);
    path.lineTo(width, height * 0.58);
    //path.lineTo(width, height);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}