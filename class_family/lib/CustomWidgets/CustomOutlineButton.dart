import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenPeripherals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CustomOutlineButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color outlineColor;
  final Color textColor;

  const CustomOutlineButton({Key key, this.title, this.height, this.width, this.outlineColor, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: height,
      width: width,
      child: Center(
        child: GestureDetector(
          onTap: (){
          },
          child: Text(
            "$title",
            style: TextStyle(
                color: textColor,
              fontSize: 20
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius:BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: outlineColor,
        ),


      ),
    );
  }
}
