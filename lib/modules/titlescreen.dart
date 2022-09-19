import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleScreen extends StatelessWidget {
  final double ovalMultiplier;
  final String pageTitle;
  const TitleScreen(
      {required this.ovalMultiplier, required this.pageTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double headerMultiplier = 8;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 80,
          child: SvgPicture.network(
              'https://static.igem.wiki/teams/4314/wiki/gradient.svg',
              fit: BoxFit.cover),
        ),
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Center(
                child: SvgPicture.asset(
              'images/silverOval.svg',
              width: unitWidthValue * ovalMultiplier + 10,
            )),
            Center(
              child: Text(
                pageTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (unitWidthValue * headerMultiplier),
                    fontFamily: 'Rockabye'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
