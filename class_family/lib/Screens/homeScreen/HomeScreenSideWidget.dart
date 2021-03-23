import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Screens/homeScreenStacks/HomeScreenPeripherals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenSideWidget extends StatefulWidget {
  @override
  _HomeScreenSideWidgetState createState() => _HomeScreenSideWidgetState();
}

class _HomeScreenSideWidgetState extends State<HomeScreenSideWidget> {
  @override
  Widget build(BuildContext context) {
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Theme.of(context).primaryColor
        ),
        padding: EdgeInsets.all(2),
        height: 220,
        width: 80,
        child: Container(
          padding: EdgeInsets.all(5),
          height: 150,
          width: 40,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: (){
                  homeScreenTopModel.setPeripheralIndex(0);
                  homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
                  print(homeScreenTopModel.peripheralIndex);
                },
                icon: Icon(
                  Icons.notifications,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              IconButton(
                onPressed: (){
                  homeScreenTopModel.setPeripheralIndex(1);
                  homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
                  print(homeScreenTopModel.peripheralIndex);
                },
                icon: Icon(
                  Icons.calendar_today,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              IconButton(
                onPressed: (){
                  homeScreenTopModel.setPeripheralIndex(2);
                  homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
                  print(homeScreenTopModel.peripheralIndex);
                },
                icon: Icon(
                  Icons.people,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              IconButton(
                onPressed: (){
                  homeScreenTopModel.setPeripheralIndex(3);
                  homeScreenTopModel.openPeripheral(context, HomeScreenPeripherals());
                  print(homeScreenTopModel.peripheralIndex);
                },
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
