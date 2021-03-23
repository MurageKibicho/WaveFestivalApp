import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Screens/peripherals/CalendarScreen.dart';
import 'package:class_family/Screens/peripherals/MyClasses.dart';
import 'package:class_family/Screens/peripherals/NotificationsScreen.dart';
import 'package:class_family/Screens/peripherals/SettingsScreen.dart';
import 'package:class_family/Screens/peripherals/SpeakerScreen.dart';
import 'package:class_family/Screens/peripherals/ViewAll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenPeripherals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> peripherals = [
      NotificationsScreen(), CalendarScreen(), SpeakerScreen(), SettingsScreen(),
      ViewAll(), MyClasses()
    ];
    final homeScreenTopModel = Provider.of<HomeScreenTopModel>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Opacity(
        opacity:0.95,
        child: peripherals[homeScreenTopModel.peripheralIndex],

      ),
    );


  }
}
