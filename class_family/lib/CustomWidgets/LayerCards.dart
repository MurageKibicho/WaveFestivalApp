//Card layout
import 'package:class_family/res.dart';
import 'package:flutter/material.dart';

class LayerCards extends StatelessWidget {
  //Card Constructor
  final Color topBarColour;
  final String title;
  final String imagePath;
  final String tag;
  final String teachers;
  final String grades;
  final String classDates;
  final String classDays;
  final String classTime;

  LayerCards({
    this.topBarColour, this.title, this.imagePath, this.tag,
    this.teachers, this.grades, this.classDates, this.classDays, this.classTime
});

  final TextStyle courseTitleTextStyle = TextStyle(
    fontSize: 13,
    fontFamily: null,
    fontWeight: FontWeight.bold,
    color: Colors.amber
  );
  final TextStyle courseTagEconomicsStyle = TextStyle(
      fontSize: 11,
      fontFamily: null,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
  final TextStyle courseDescriptionTagTextStyle = TextStyle(
      fontSize: 10,
      fontFamily: null,
      fontWeight: FontWeight.bold,
      color: Colors.amber
  );
  final TextStyle courseDescriptionTagTextStyleBlack = TextStyle(
      fontSize: 10,
      fontFamily: null,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
  final TextStyle courseDescriptionWordsTextStyle = TextStyle(
      fontSize: 13,
      fontFamily: null,
      fontWeight: FontWeight.bold,
      color: Colors.grey
  );
  final TextStyle viewAllButtonTextStyle = TextStyle(
      fontSize: 13,
      fontFamily: null,
      color: Colors.grey
  );


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(5),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 220,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 8,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: topBarColour,
                ),//TODO Change to constructor color
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 1.0),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Venture Capital: The Other Side of Starting a Business", //TODO change to title
                          style: courseTitleTextStyle,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Tags:",
                                style: courseDescriptionTagTextStyle,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                color: Colors.orange,
                                height: 20,
                                width: 70,
                                child: Center(
                                  child: Text(
                                    "Economics",
                                    style: courseTagEconomicsStyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:4.0, top: 3),
                              child: Text(
                                "Teachers:",
                                style: courseDescriptionTagTextStyleBlack,
                              ),
                            ),
                            Container(
                              height: 38,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Julie Tassinari \n Harvard'23",
                                    style: courseDescriptionWordsTextStyle,
                                  ),
                                  Text(
                                    "Murage Kibicho \n Yale'23",
                                    style: courseDescriptionWordsTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:4.0),
                              child: Text(
                                "Audience: ",
                                style: courseDescriptionTagTextStyleBlack,
                              ),
                            ),
                            Text(
                              "Grades 6 - 12",
                              style: courseDescriptionWordsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:20.5),
                              child: Text(
                                "Dates: ",
                                style: courseDescriptionTagTextStyleBlack,

                              ),
                            ),
                            Text(
                              "July 28 - July 30",
                              style: courseDescriptionWordsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Text(
                                "Days: ",
                                style: courseDescriptionTagTextStyleBlack,
                              ),
                            ),
                            Text(
                              "Tuesday, Thursday",
                              style: courseDescriptionWordsTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right:22.0),
                                child: Text(
                                  "Time\n(EST): ",
                                  style: courseDescriptionTagTextStyleBlack,
                                ),
                              ),
                            ),
                            Text(
                              "9.00 pm - 10.30 pm",
                              style: courseDescriptionWordsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          child: Container(
                            width: 90,
                            height: 35,
                            color: Colors.orange,
                            child: Center(
                              child: Text(
                                "View Details",
                                style: viewAllButtonTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0, left: 280),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 170,
                          width: 160,
                          child: Image.asset(
                            "assets/C++.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0, left: 280),
                      child: Container(
                        width: 160,
                        height: 170,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.white12,
                              Colors.amber.withOpacity(0.01),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}

