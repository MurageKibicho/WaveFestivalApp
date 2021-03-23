import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class NotificationsScreen extends StatefulWidget {
  NotificationsScreen({Key key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<String> items = [
    "Do you think there should be a clear all button",
    "Huck Farvard: Yale won The game ",
    "New Speakers added to calendar!",
    "Summer openings. Join the Waveelf team!",
    "Yo! try Up Up Down Down B A . You won't regret it",
    "This is a random message",
    "This is a public service announcement",
    "Trying to fix Swipe to dismiss logic",
    "Writing stuff till it starts scrolling ",
    "It takes 10 items to scroll. LOL!"
  ];

  String deletedItem;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final homeScreenModel = Provider.of<HomeScreenTopModel>(context);
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: RadialGradient(
            center: const Alignment(0.795, -0.645),
            radius: 0.06,
            colors: [
              Colors.white.withOpacity(0),
              Theme.of(context).secondaryHeaderColor,
            ]
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Notifications",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: screenWidth,
                  height: 2,
                  child: Container(
                    width: screenWidth,
                    color: Colors.black,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 500,
                  width: screenWidth * 0.9,
                  child: ListView.separated(
                    padding: EdgeInsets.all(1),
                      itemCount: items.length,
                      separatorBuilder: (BuildContext context, int index) => Divider( height: 1, color: Colors.white),
                      itemBuilder: (context, index){
                        final item = items[index];
                        return Dismissible(
                          child: ListTile(
                            title: Text(
                                "$item"
                            ),
                          ),
                          key: Key(item),
                          onDismissed:(direction) {
                            setState(() {
                              deletedItem = items.removeAt(index);
                            });
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Notification deleted"),
                                action: SnackBarAction(
                                  label: "UNDO",
                                  onPressed: (){
                                    setState(() {
                                      items.insert(index, deletedItem);
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                          background: Container(
                            color: Colors.red,
                          ),

                        );
                      }),
                ),
              ],
            ),
          ),

          Positioned(
            right: 22,
            top: 135,
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
