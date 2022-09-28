import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String projectName;
  final String imageSource;
  final String description;

  const Project({
    required this.projectName,
    required this.imageSource,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).size.width <= 900
          ? MediaQuery.of(context).size.width <= 425
              ? const EdgeInsets.all(20)
              : const EdgeInsets.all(40)
          : const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
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
                projectName,
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
        ),
        const SizedBox(height: 20),
        Center(
            child: SizedBox(
                height: 400,
                width: 800,
                child: Image.network(imageSource, fit: BoxFit.cover))),
        const SizedBox(height: 20),
        SelectableText(
          description,
          style: const TextStyle(fontFamily: 'Helvetica'),
        )
      ]),
    );
  }
}
