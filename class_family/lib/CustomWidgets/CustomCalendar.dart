import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

const selectedDayTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: null,
  fontSize: 20,
);
const headerTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: null,
  fontSize: 20,
);
const todayTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: null,
  fontSize: 20,
);
const daysTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: null,
  fontSize: 10,
);
const weekDayTextStyle = TextStyle(
  color: Colors.orange,
  fontFamily: null,
  fontSize: 12,
);
const weekendTextStyle = TextStyle(
  color: Colors.grey,
  fontFamily: null,
  fontSize: 12,
);
const thisMonthDayBorderColor = Colors.orange;
const todayButtonColor = Colors.orange;
const selectedDayButtonColor = Colors.orange;
const selectedDayBorderColor = Colors.orange;

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
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
        new DateTime(2020, 8, 7):[
          new Event(
            date: new DateTime(2020, 7, 7),
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
            date: new DateTime(2020, 8, 7),
            title: "Event 2",
            icon: _eventIcon,
          ),
          new Event(
            date: new DateTime(2020, 8, 7),
            title: "Event 3",
            icon: _eventIcon,
          ),
        ]
      }
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 500,
          child: _calendarCarousel = CalendarCarousel<Event>(
            customDayBuilder: (bool isSelectable, int index, bool isSelectedDay, bool isToday,
                               bool isPrevMonthDay, TextStyle textStyle, bool isNextMonthDay,
                                bool isThisMonthDay, DateTime day,){
              if(day.day == 15) {
                return Center(
                  child: Icon(Icons.local_airport),
                );
              } else {
                return null;
              }
            },
            markedDateIconBuilder: (event){
              return event.icon;
            },
            markedDatesMap: _markedDateMap,
            height: 400,
            weekFormat: false,
            showHeaderButton: false,
            markedDateMoreShowTotal: true,
            showIconBehindDayText: true,
            daysHaveCircularBorder: true,
            todayTextStyle: todayTextStyle,
            headerTextStyle: headerTextStyle,
            daysTextStyle: daysTextStyle,
            weekendTextStyle: weekendTextStyle,
            weekdayTextStyle: weekDayTextStyle,
            markedDateIconMargin: 10,
            headerMargin: EdgeInsets.only(top: 1),
            selectedDateTime: _currentDate,
            selectedDayBorderColor: selectedDayBorderColor,
            selectedDayButtonColor: selectedDayButtonColor,
            headerTitleTouchable: true,
            thisMonthDayBorderColor: thisMonthDayBorderColor,
            selectedDayTextStyle: selectedDayTextStyle,
            todayButtonColor: todayButtonColor,
            onDayPressed: (DateTime date, List<Event> events){
              this.setState(() => _currentDate = date );
            },


          ),
        ),
      ],
    );
  }
}
