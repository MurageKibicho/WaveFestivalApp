//Depends on timer_builder: ^1.3.0
import 'package:timer_builder/timer_builder.dart';
import 'package:flutter/material.dart';

class ClockWidget extends StatelessWidget {
  static const weekDayAndMonthTextStyle = TextStyle(
    color: const Color(0xFF6465AD),
    fontFamily: null,
    fontSize: 24,
  );
  static const superScriptTextStyle = TextStyle(
      color: const Color(0xFF79ACA1),
      fontFamily: null,
      fontSize: 26,
  );

  static const hourTextStyle = TextStyle(
    color: const Color(0xFFde7a5b),
    fontFamily: null,
    fontSize: 26,
  );
  static const minuteTextStyleEven = TextStyle(
    color:  const Color(0xFF6465AD),
    fontFamily: null,
    fontSize: 26,
  );
  static const minuteTextStyleOdd = TextStyle(
    color: const Color(0xFF79ACA1),
    fontFamily: null,
    fontSize: 26,
  );
  static const secondsWhileMinutesAreEvenTextStyle = TextStyle(
    color: const Color(0xFF79ACA1),
    fontFamily: null,
    fontSize: 14,
  );
  static const secondsWhileMinutesAreOddTextStyle = TextStyle(
    color: const Color(0xFF6465AD),
    fontFamily: null,
    fontSize: 14,
  );
  @override
  Widget build(BuildContext context) {
    //Create Date and Time
    final DateTime now = DateTime.now();
    String year = "${now.year.toString()}";
    String month = "${now.month.toString()}";
    String dayNum = "${now.day.toString()}";
    String weekDay = "${now.weekday.toString()}";
    String hour = "${now.hour.toString()}";
    int minute = now.minute;

    Map <String, String> monthMap = new Map();
    Map <String, String> dayMap = new Map();
    Map <String, String> dateSuperScriptMap = new Map();

    monthMap = {
      "1" : "January", "2" : "February", "3" : "March", "4" : "April",
      "5" : "May", "6" : "June", "7" : "July", "8" : "August",
      "9" : "September", "10" : "October", "11" : "November", "12" : "December"
    };

    dayMap = {
      "1" : "Monday", "2" : "Tuesday", "3" : "Wednesday",
      "4" : "Thursday", "5" : "Friday", "6" : "Saturday", "7" : "Sunday"
    };

    dateSuperScriptMap = {
      "1" : "st", "2" : "nd", "3" : "rd", "4" : "th",
      "5" : "th", "6" : "th", "7" : "th", "8" : "th",
      "9" : "th", "10" : "th", "11" : "th", "12" : "th",
      "13" : "th", "14" : "th", "15" : "th", "16" : "th",
      "17" : "th", "18" : "th", "19" : "th", "20" : "th",
      "21" : "st", "22" : "nd", "23" : "rd", "24" : "th",
      "25" : "th", "26" : "th", "27" : "th", "28" : "th",
      "29" : "th", "30" : "th", "31" : "st"
    };

    //Create Date and Time
    return Container(
      child: TimerBuilder.periodic(Duration(seconds: 1),
          builder: (context){
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("${dayMap[(DateTime.now().weekday).toString()]}, " +
                         "${DateTime.now().day.toString()}",
                    style: weekDayAndMonthTextStyle,
                         ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                          "${dateSuperScriptMap[DateTime.now().day.toString()]}",
                      style: superScriptTextStyle
                      ),
                    ),
                    Text(
                      "${monthMap[DateTime.now().month.toString()]}",
                      style: weekDayAndMonthTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    (DateTime.now().hour.toInt() < 10) ?
                        Text(
                          "0${DateTime.now().hour.toString()}",
                          style: hourTextStyle,
                        ):
                    Text(
                      "${DateTime.now().hour.toString()}",
                      style: hourTextStyle,
                    ),

                    (DateTime.now().minute.toInt() < 10) ?
                    Text(
                      " : 0${DateTime.now().minute.toString()}",
                      style: hourTextStyle,
                    )
                    :
                    Text(
                      " : ${DateTime.now().minute.toString()}",
                      style: (DateTime.now().minute.toInt() % 2 == 0) ? minuteTextStyleEven
                              : minuteTextStyleOdd,
                    ),

                    (DateTime.now().second.toInt() < 10)
                     ?
                     Text(
                    "0${DateTime.now().second.toString()}",
                    style: (DateTime.now().minute.toInt() % 2 == 0) ? secondsWhileMinutesAreEvenTextStyle
                        : secondsWhileMinutesAreOddTextStyle,
                    )
                    :
                    Text(
                      "${DateTime.now().second.toString()}",
                      style: (DateTime.now().minute.toInt() % 2 == 0) ? secondsWhileMinutesAreEvenTextStyle
                           : secondsWhileMinutesAreOddTextStyle,
                      ),

                  ],
                ),
              ],
            );
          }
      )
    );
  }
}
