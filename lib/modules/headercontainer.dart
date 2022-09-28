import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  final String text;
  const HeaderContainer({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width <= 900
              ? MediaQuery.of(context).size.width <= 500
                  ? 39 / 64 * MediaQuery.of(context).size.width
                  : 10 / 16 * MediaQuery.of(context).size.width
              : 7 / 16 * MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: const BoxDecoration(
              color: Color(0xff6987c9),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Text(
            text,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width <= 900
                    ? MediaQuery.of(context).size.width <= 500
                        ? 16
                        : 22
                    : 30,
                color: Colors.white),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width <= 900
              ? MediaQuery.of(context).size.width <= 500
                  ? 49
                  : 58
              : 66,
          height: MediaQuery.of(context).size.width <= 900
              ? MediaQuery.of(context).size.width <= 500
                  ? 49
                  : 58
              : 66,
          decoration: const BoxDecoration(
              color: Color(0xff6987c9),
              borderRadius: BorderRadius.all(Radius.circular(60))),
        )
      ],
    );
  }
}
