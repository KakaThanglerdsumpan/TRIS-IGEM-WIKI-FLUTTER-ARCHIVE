import 'package:flutter/material.dart';
import 'home_2_right.dart';
import 'home_2_left.dart';

class homeTwo extends StatelessWidget {
  const homeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double spaceMultiplier = 1.0;
    return Material(
      child: Padding(
        padding: EdgeInsets.all(unitWidthValue * spaceMultiplier),
        child: Row(
          children: <Widget>[
            Expanded(
              child: homeTwoLeft(),
            ),
            Expanded(
              child: homeTwoRight(),
            )
          ],
        ),
      ),
    );
  }
}
