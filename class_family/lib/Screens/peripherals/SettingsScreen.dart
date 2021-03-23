import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
      bool isSwitched = true;
      final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final homeScreenModel = Provider.of<HomeScreenTopModel>(context);
    final Container dividerContainer  =  Container(
        height: 1,width: screenWidth, child: Divider(color: Colors.white, thickness: 0.5,),);
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: RadialGradient(
            center: const Alignment(0.795, -0.33),
            radius: 0.06,
            colors: [
              Colors.white.withOpacity(0),
              Theme.of(context).secondaryHeaderColor,
            ]),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 185,
            child: Container(
              height: 100,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 10,
                    width: screenWidth,
                    child: Divider(
                      color: Colors.black,
                      thickness: 5,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              height: screenHeight*0.75,
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 15,right: 120,),
                    trailing: Text(
                      "Murage Kibicho"
                    ),
                    title: Text(
                      "Owner:"
                    ),
                  ),
                  Container(
                    height: 1,
                    width: screenWidth,
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.5,
                    ),
                  ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15,right: 120,),
                trailing: Text(
                  "Developer"
                ),
                title: Text(
                    "Role:"
                ),
              ),
                 dividerContainer,
                  ListTile(
                    trailing: Container(
                      height: 50,
                      width: 80,
                      child: Switch(
                        activeColor: Colors.black,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.black,
                        inactiveThumbColor: Colors.white,
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                      ),
                    ),
                    title: Text(
                        "Dark Mode:"
                    ),
                  ),
                  dividerContainer,
                  ListTile(
                    trailing: Icon(
                      Icons.exit_to_app
                    ),
                    title: Text(
                        "Log Out:"
                    ),
                  ),
                  dividerContainer,
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Notification Preferences"
                  ),
                  ListTile(
                    trailing: Container(
                      height: 50,
                      width: 100,
                      child: Switch(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.lightGreen,
                        inactiveTrackColor: Colors.white,
                        inactiveThumbColor: Colors.white,
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                      ),
                    ),
                    title: Text(
                        "All Notifications:"
                    ),
                  ),
                  dividerContainer,
                  ListTile(
                    trailing: Container(
                      height: 50,
                      width: 80,
                      child: Switch(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.lightGreen,
                        inactiveTrackColor: Colors.white,
                        inactiveThumbColor: Colors.white,
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                      ),
                    ),
                    title: Text(
                        "Phone Notifications:"
                    ),
                  ),
                  dividerContainer,
                  ListTile(
                    trailing: Container(
                      height: 50,
                      width: 80,
                      child: Switch(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.lightGreen,
                        inactiveTrackColor: Colors.white,
                        inactiveThumbColor: Colors.white,
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                      ),
                    ),
                    title: Text(
                        "Email Notifications:"
                    ),
                  ),
                  dividerContainer,
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About "
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.help,
                      color: Theme.of(context).backgroundColor,
                    ),
                    title: Text(
                        "FAQ's:"
                    ),
                  ),
                  ListTile(
                    title: Text(
                        "Wavelf Mobile v1.1.0 (RQA)"
                    ),
                  ),


                ],
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 278,
            child: GestureDetector(
              onTap: () {
                homeScreenModel.closeNotifications(context);
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
