//List view builder for Class Cards
//Added Layer Cards from Custom Widgets

import 'package:class_family/CustomWidgets/LayerCards.dart';
import 'package:flutter/material.dart';

class BottomCardsLayout extends StatefulWidget {
  @override
  _BottomCardsLayout createState() => _BottomCardsLayout();
}
class _BottomCardsLayout extends State<BottomCardsLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index){
          return LayerCards(
            topBarColour: Theme.of(context).primaryColor,);
        },
      ),
    );
  }
}
