import 'package:flutter/material.dart';

class HomeScreenTopModel extends ChangeNotifier{
  //Initialize Variables
  bool _isPeripheralOpen = false;
  int _peripheralIndex = 0;

  //Make getters and setters
  get isPeripheralOpen => _isPeripheralOpen;
  set isPeripheralOpen(value){
    _isPeripheralOpen = value;
    notifyListeners();
  }

  int get peripheralIndex => _peripheralIndex;
  set peripheralIndex (value){
    _peripheralIndex = value;
    notifyListeners();
  }

  void openPeripheral(BuildContext context, Widget widget){
    isPeripheralOpen = true;
      Navigator.of(context).push(
        PageRouteBuilder(
          opaque: false,
          pageBuilder: (_, __, ___) => widget
        ),
      );
      notifyListeners();
  }
  void closeNotifications(BuildContext context) {
    isPeripheralOpen = false;
    Navigator.pop(context);
    notifyListeners();
  }

  void setPeripheralIndex(int index) {
    peripheralIndex = index;
    notifyListeners();
  }


}