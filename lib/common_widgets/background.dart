import 'package:flutter/material.dart';

class bg extends StatelessWidget {
  const bg({super.key});

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
