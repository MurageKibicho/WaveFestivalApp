import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/logo.png",
        width: 300,
        height: 100,),
      color: Colors.white,
    );
  }
}
