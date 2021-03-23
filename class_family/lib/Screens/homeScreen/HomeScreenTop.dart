import 'package:class_family/CustomWidgets/ClockWidget.dart';
import 'package:class_family/CustomWidgets/CustomSearch.dart';
import 'package:class_family/CustomWidgets/homeScreen/MyClassesButton.dart';
import 'package:class_family/CustomWidgets/homeScreen/ViewAllButton.dart';
import 'package:class_family/CustomWidgets/homeScreen/logoButton.dart';
import 'package:class_family/Screens/homeScreen/HomeScreenBott.dart';
import 'package:class_family/Screens/homeScreen/HomeScreenSideWidget.dart';
import 'package:class_family/Screens/login/loginScreenStacks/LoginSreenCombined.dart';
import 'package:class_family/Screens/login/loginScreenStacks/horizonBackground.dart';
import 'package:flutter/material.dart';
import 'package:class_family/CustomWidgets/TypeWriterWidget.dart';
import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:provider/provider.dart';



class HomeScreenTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0, left: 1),
      child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight ,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(210)),
                color: Colors.white
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                LogoButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 360,
                      child: ClockWidget(),
                    ),
                    SizedBox(
                      width: 1,
                    ),

                    Spacer(),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
              top: 250,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TypeWriterWidget(),
                  SizedBox(
                    height: 160,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Theme.of(context).primaryColor
                      ),
                      padding: EdgeInsets.all(1),
                      height: 320,
                      width: screenWidth*0.95,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        height: 150,
                        width: 40,
                        color: Colors.white,
                        child: Transform.scale(
                            scale: 0.9,
                            child: HomeScreenBott()),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      MyClassesButton(),
                      SizedBox(
                        width: 100,
                      ),
                      ViewAllButton(),
                    ],
                  ),
                ],
              )),
          Positioned(
              right: 0,
              top:120,
              child: HomeScreenSideWidget()),
          Positioned(
            right: 0,
            top: 360,
            child: Container(
                width: screenWidth*0.95,
                child: CustomSearch()),
          ),
          //LoginScreenCombined(),
        ],
      ),
    );

  }
}

