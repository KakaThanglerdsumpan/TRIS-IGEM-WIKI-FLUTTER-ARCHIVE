import 'dart:developer';

import 'package:flutter/material.dart';

class homeOne extends StatelessWidget {
  const homeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double spaceMultiplier;
    if (MediaQuery.of(context).size.width <= 1000) {
      spaceMultiplier = 30;
    } else {
      spaceMultiplier = 20;
    }
    double headerMultiplier = 15;
    double spaceMultiplier2 = 5;
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 80,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff2132A6),
              Color(0xff6987c9),
              // Color.fromARGB(255, 125, 148, 199),
              // Color.fromARGB(0, 255, 255, 255),
              // Colors.indigo,
              Colors.white
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            // tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: spaceMultiplier * unitWidthValue,
            // ),
            SelectableText(
              'Thailand_RIS',
              style: TextStyle(
                  fontSize: headerMultiplier * unitWidthValue,
                  color: Colors.white,
                  fontFamily: 'rockabye'),
            ),
            SizedBox(
              height: spaceMultiplier2 * unitWidthValue,
            ),
            const SelectableText(
              "got routes to work. Go to /projects",
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: 'rockabye'),
            )
          ],
        ),
      ),
    );
  }
}
