import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
class BeachContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight/2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, -1),
          end: const Alignment(0, -0.3),
          colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).primaryColor.withAlpha(1),
          ],
        ),
      ),
    );
  }
}
