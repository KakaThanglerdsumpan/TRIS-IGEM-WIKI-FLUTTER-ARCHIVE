import 'package:flutter/material.dart';
import 'package:igem/modules/appbars.dart';
import 'package:igem/modules/bottombar.dart';
import 'package:igem/modules/sidemenu.dart';
import 'package:igem/modules/titlescreen.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideMenu(),
      body: ListView(
        children: [
          const TitleScreen(
            ovalMultiplier: 35,
            pageTitle: 'TEAMS',
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/tmp.png',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  children: [
                    const Text(
                      'INTRODUCING THE TEAM',
                      style: TextStyle(
                        fontSize: 36,
                        color: Color(0xff6987c9),
                      ),
                    ),
                    Stack(alignment: AlignmentDirectional.centerEnd, children: [
                      Image.asset(
                        'images/blob.png',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 3 / 8,
                        child: const Flexible(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. ',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width <= 900
                    ? MediaQuery.of(context).size.width <= 500
                        ? 39 / 64 * MediaQuery.of(context).size.width
                        : 10 / 16 * MediaQuery.of(context).size.width
                    : 7 / 16 * MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff6987c9)),
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Text(
                  'TEAM MEMBERS',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width <= 900
                          ? MediaQuery.of(context).size.width <= 500
                              ? 16
                              : 22
                          : 30,
                      color: const Color(0xff6987c9)),
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
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xff6987c9),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(60))),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 100,
                  margin: const EdgeInsets.only(right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'NAME',
                        style: TextStyle(
                          color: Color(0xff6987c9),
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'TEAM/POSITION',
                        style: TextStyle(
                          color: Color(0xff6987c9),
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/tmp.png',
                            width: MediaQuery.of(context).size.width / 6,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Flexible(
                            child: SelectableText(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                              style: TextStyle(
                                  fontFamily: 'helvetica', fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 100,
                  margin: const EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'NAME',
                        style: TextStyle(
                          color: Color(0xff6987c9),
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'TEAM/POSITION',
                        style: TextStyle(
                          color: Color(0xff6987c9),
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          const Flexible(
                            child: SelectableText(
                              'Lorem ipsum dolor sit xamet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'helvetica', fontSize: 12),
                            ),
                          ),
                          Image.asset(
                            'images/tmp.png',
                            width: MediaQuery.of(context).size.width / 6,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          const BottomBar(),
        ],
      ),
    );
  }
}
