import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff34407c),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SelectableText(
                  'Contact Us',
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
            const SizedBox(height: 10),
            Image.network(
              'https://static.igem.wiki/teams/4314/wiki/sponsor.png',
              height: MediaQuery.of(context).size.width <= 425 ? 50 : 70,
            )
          ],
        ));
  }
}
