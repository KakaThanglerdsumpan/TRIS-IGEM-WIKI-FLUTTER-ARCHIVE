import 'package:flutter/material.dart';

class homeTwoRight extends StatelessWidget {
  const homeTwoRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SelectableText("loreem ipsum some stuff here something here"),
          SelectableText("loreem ipsum some stuff here something here"),
          SelectableText("loreem ipsum some stuff here something here"),
          SelectableText("loreem ipsum some stuff here something here"),
          SelectableText("loreem ipsum some stuff here something here"),
        ],
      ),
    ));
  }
}
