//uses animated_text_kit 2.2.0

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeWriterWidget extends StatefulWidget {
  @override
  _TypeWriterWidgetState createState() => _TypeWriterWidgetState();
}

const List<String> gradesCategories = [
  "Grade 6", "Grade 7", "Grade 8", "Grade 9", "Grade 10", "Grade 11", "Grade 12"
];

const List<String> courseCategories = [
  "History", "Tech", "Science", "Literature", "School Tips", "Social Science",
  "Business", "Arts", "Politics", "Culture", "Math", "Lifestyle",
];


class _TypeWriterWidgetState extends State<TypeWriterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Learn:"),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          child: Text(
              "Grade 6",
          ),
            ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 80,
          child: RotateAnimatedTextKit(
            repeatForever: true, //this will ignore [totalRepeatCount]
            pause: Duration(milliseconds:  1000),
            text: courseCategories,
            textStyle: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
            displayFullTextOnTap: true,
          ),
        ),
      ],
    );
  }
}
