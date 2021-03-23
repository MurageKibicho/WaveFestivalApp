import 'package:class_family/CustomWidgets/CustomCalendar.dart';
import 'package:class_family/Models/HomeScreenTopModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:provider/provider.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel, EventList;

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {

  DateTime _currentDate = DateTime(2019, 2, 3);
  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(1000)),
      border: Border.all(
        color: Colors.white,
        width: 2.0,
      ),
    ),
    child: Icon(
      Icons.person,
      color: Colors.amber,
      size: 0.1,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10):[
        new Event(
          date: new DateTime(2019, 2, 10),
          title: "Event 1",
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: "Event 2",
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: "Event 3",
          icon: _eventIcon,
        ),
      ]
    }
  );
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
            center: const Alignment(0.795, -0.54),
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
            top: 180,
            child: Container(
              height: 130,
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  Text(
                      "Calendar"
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2,
                    width: screenWidth,
                    child: Divider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
                width: screenWidth,
                height: screenHeight * 0.6,
                child: CustomCalendar()),
          ),

          Positioned(
            right: 22,
            top: 182,
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
