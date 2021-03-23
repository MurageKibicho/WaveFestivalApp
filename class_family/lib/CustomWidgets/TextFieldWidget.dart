import 'package:class_family/Models/LoginModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final  bool obscureText;
  final Function onChanged;

  const TextFieldWidget({Key key, this.hintText, this.prefixIconData, this.suffixIconData, this.obscureText, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginModel = Provider.of<LoginModel>(context);
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        suffixIcon: GestureDetector(
          onTap: () {
            loginModel.isVisible = !loginModel.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: Colors.white,
          ),
        ),
        labelStyle: TextStyle(color: Colors.white),
        focusColor: Colors.white,
      ),
    );
  }
}
