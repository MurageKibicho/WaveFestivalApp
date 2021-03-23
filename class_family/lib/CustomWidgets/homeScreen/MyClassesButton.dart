import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenPeripherals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyClassesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left:100.0),
      child: Container(
        padding: EdgeInsets.all(4),
        height: 30,
        width: 100,
        child: Center(
          child: GestureDetector(
            onTap: () {
              homeScreenTopModel.setPeripheralIndex(5);
              homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
              print(homeScreenTopModel.peripheralIndex);
            },
            child: Text(
              "My Classes",
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
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
    );
  }
}
