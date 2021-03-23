
import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier{
  bool _isVisible = false;
  bool _isValid = false;


  get isVisible => _isVisible;
  set isVisible(value){
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;

  void isValidEmail(String input){
    if (input == "murage.kibicho@example.com"){
      _isValid = true;
    }
    else {
      _isValid = false;
    }
    notifyListeners();
  }

}