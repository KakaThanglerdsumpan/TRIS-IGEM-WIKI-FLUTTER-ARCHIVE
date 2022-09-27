import 'package:flutter/material.dart';

class homeTwoLeft extends StatelessWidget {
  const homeTwoLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double headerMultiplier = 4.0;
    double spaceMultiplier = 2.0;
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.all(unitWidthValue * spaceMultiplier),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              "some description here idk",
              style: TextStyle(
                  fontSize: unitWidthValue * headerMultiplier,
                  color: Colors.indigo,
                  fontFamily: 'rockabye'),
            ),
            const SelectableText("add vid later"),
          ],
        ),
      ),
    ));
  }
}
