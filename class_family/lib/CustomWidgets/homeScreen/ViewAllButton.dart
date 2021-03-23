import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenPeripherals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ViewAllButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Container(
      padding: EdgeInsets.all(4),
      height: 30,
      width: 80,
      child: Center(
        child: GestureDetector(
          onTap: (){
            homeScreenTopModel.setPeripheralIndex(4);
            homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
            print(homeScreenTopModel.peripheralIndex);
          },
          child: Text(
            "View All",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Theme.of(context).backgroundColor,
        ),


      ),
    );
  }
}
