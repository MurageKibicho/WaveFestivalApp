import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SpeakerScreen extends StatefulWidget {
  @override
  _SpeakerScreenState createState() => _SpeakerScreenState();
}

class _SpeakerScreenState extends State<SpeakerScreen> {
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
            center: const Alignment(0.795, -0.43),
            radius: 0.06,
            colors: [
              Colors.white.withOpacity(0),
              Theme.of(context).secondaryHeaderColor,
            ]
        ),
      ),
      child: Stack(
        children: <Widget>[
          Text("Speaker Screen",
            style: TextStyle(color: Colors.black),
          ),

          Positioned(
            right: 22,
            top: 231,
            child: GestureDetector(
              onTap: (){
                homeScreenModel.closeNotifications(context);
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );



  }
}
