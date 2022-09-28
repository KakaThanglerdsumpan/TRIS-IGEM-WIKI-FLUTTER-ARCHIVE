import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common_widgets/background.dart';

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
    double spaceMultiplier3 = 3;
    return Material(
        child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const bg(),
        SvgPicture.network(
            'https://static.igem.wiki/teams/4314/wiki/silveroval.svg'),
        Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'rockabye'),
                ),
              ],
            ),
            SizedBox(
              height: spaceMultiplier3 * unitWidthValue,
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.arrowDown),
              onPressed: () {},
            )
          ],
        ),
      ],
    ));
  }
}
