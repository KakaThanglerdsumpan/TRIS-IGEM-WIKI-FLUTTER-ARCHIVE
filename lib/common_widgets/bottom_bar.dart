import 'package:flutter/material.dart';

class bottomBar extends StatelessWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff34407c),
      child: MediaQuery.of(context).size.width <= 425
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Contact us',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'helvetica',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Email: IGEM2022RIS@gmail.com\nInstagram: tris.igem22\nYoutube: TRIS IGEM',
                  style: TextStyle(
                    fontFamily: 'helvetica',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
              ],
            )
          : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SelectableText(
                    'Contact us',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'helvetica',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  SelectableText(
                    'Email: IGEM2022RIS@gmail.com\nInstagram: tris.igem22\nYoutube: TRIS IGEM',
                    style: TextStyle(
                      fontFamily: 'helvetica',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
    );
  }
}
