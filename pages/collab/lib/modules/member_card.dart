import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  final String name;
  final String team;
  final String position;
  final String intro;
  final String image;
  final String alignment;

  const Member(
      {required this.name,
      required this.team,
      required this.position,
      required this.intro,
      required this.image,
      required this.alignment,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double nameMultiplier = 3.8;
    return Container(
      margin: alignment == "left"
          ? EdgeInsets.only(
              right: MediaQuery.of(context).size.width < 700 ? 0 : 50)
          : EdgeInsets.only(
              left: MediaQuery.of(context).size.width < 700 ? 0 : 50),
      child: Column(
        crossAxisAlignment: alignment == 'left'
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          SelectableText(
            '${name.toUpperCase()}\n${team.toUpperCase()}/${position.toUpperCase()}',
            textAlign: alignment == "left" ? TextAlign.left : TextAlign.right,
            style: TextStyle(
              color: const Color(0xff6987c9),
              fontSize: MediaQuery.of(context).size.width < 600
                  ? (nameMultiplier * unitWidthValue)
                  : 20,
            ),
          ),
          Row(
            children: alignment == "left"
                ? [
                    Image.network(
                      image,
                      width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width / 3
                          : MediaQuery.of(context).size.width / 4,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: SelectableText(
                        intro,
                        maxLines: MediaQuery.of(context).size.width < 500
                            ? 6
                            : MediaQuery.of(context).size.width < 550
                                ? 8
                                : MediaQuery.of(context).size.width < 600
                                    ? 10
                                    : MediaQuery.of(context).size.width < 700
                                        ? 8
                                        : 10,
                        style: const TextStyle(
                            fontFamily: 'helvetica', fontSize: 12),
                      ),
                    )
                  ]
                : [
                    Flexible(
                      child: SelectableText(
                        intro,
                        textAlign: TextAlign.right,
                        maxLines: MediaQuery.of(context).size.width < 500
                            ? 6
                            : MediaQuery.of(context).size.width < 550
                                ? 8
                                : MediaQuery.of(context).size.width < 600
                                    ? 10
                                    : MediaQuery.of(context).size.width < 700
                                        ? 8
                                        : 10,
                        style: const TextStyle(
                            fontFamily: 'helvetica', fontSize: 12),
                      ),
                    ),
                    Image.network(
                      image,
                      width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width / 3
                          : MediaQuery.of(context).size.width / 4,
                    ),
                  ],
          )
        ],
      ),
    );
  }
}

class MemberLarge extends StatelessWidget {
  final String name;
  final String team;
  final String position;
  final String intro;
  final String image;
  final String alignment;

  const MemberLarge(
      {required this.name,
      required this.team,
      required this.position,
      required this.intro,
      required this.image,
      required this.alignment,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 100,
      margin: alignment == 'left'
          ? const EdgeInsets.only(right: 50)
          : const EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: alignment == "left"
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          SelectableText(
            '${name.toUpperCase()}\n${team.toUpperCase()}/${position.toUpperCase()}',
            textAlign: alignment == "left" ? TextAlign.left : TextAlign.right,
            style: const TextStyle(
              color: Color(0xff6987c9),
              fontSize: 20,
            ),
          ),
          Row(
            children: alignment == 'left'
                ? [
                    Image.network(
                      image,
                      width: MediaQuery.of(context).size.width / 6,
                      height:
                          200 * 15 / (MediaQuery.of(context).size.width / 100),
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: SelectableText(
                        intro,
                        style: const TextStyle(
                            fontFamily: 'helvetica', fontSize: 12),
                      ),
                    )
                  ]
                : [
                    Flexible(
                      child: SelectableText(
                        intro,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                            fontFamily: 'helvetica', fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      image,
                      width: MediaQuery.of(context).size.width / 6,
                      height:
                          200 * 15 / (MediaQuery.of(context).size.width / 100),
                      fit: BoxFit.fitHeight,
                    ),
                  ],
          )
        ],
      ),
    );
  }
}
