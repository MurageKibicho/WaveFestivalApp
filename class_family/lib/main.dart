import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:class_family/Models/LoginModel.dart';
import 'package:class_family/Screens/homeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => LoginModel()),
            ChangeNotifierProvider(create: (context) => HomeScreenTopModel()),
          ],
          child: MyApp(),
        ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      theme: ThemeData(
        primaryColor: Color(0xFFde7a5b),
        secondaryHeaderColor: Color(0xFF6465AD),
        backgroundColor: Color(0xFF79ACA1),
        accentColor: Color(0xFFFBAF3B) ,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
