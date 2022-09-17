import 'package:flutter/material.dart';
import 'package:igem/modules/bottombar.dart';
import 'package:igem/modules/appbars.dart';
import 'package:igem/modules/headercontainer.dart';
import 'package:igem/modules/sidemenu.dart';
import 'package:igem/modules/titlescreen.dart';

class Attributions extends StatelessWidget {
  const Attributions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideMenu(),
      body: ListView(
        children: [
          const TitleScreen(
            ovalMultiplier: 50,
            pageTitle: 'ATTRIBUTIONS',
          ),
          Container(
            margin: MediaQuery.of(context).size.width <= 900
                ? MediaQuery.of(context).size.width <= 425
                    ? const EdgeInsets.all(20)
                    : const EdgeInsets.all(40)
                : const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderContainer(text: 'OUR TEAM'),
                const SizedBox(height: 30),
                Text(
                  "Everyone's name",
                  style: TextStyle(
                    fontFamily: 'helvetica',
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 14
                            : 16
                        : 18,
                  ),
                ),
                const SizedBox(height: 80),

                //------------------------------WETLAB----------------------------
                Text(
                  "WETLAB",
                  style: TextStyle(
                    color: const Color(0xff6987c9),
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 16
                            : 22
                        : 30,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Everyone's name",
                  style: TextStyle(
                    fontFamily: 'helvetica',
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 14
                            : 16
                        : 18,
                  ),
                ),
                const SizedBox(height: 80),

                //------------------------------DRYLAB----------------------------
                Text(
                  "DRYLAB",
                  style: TextStyle(
                    color: const Color(0xff6987c9),
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 16
                            : 22
                        : 30,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Everyone's name",
                  style: TextStyle(
                    fontFamily: 'helvetica',
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 14
                            : 16
                        : 18,
                  ),
                ),
                const SizedBox(height: 80),

                //------------------------------SUBTEAMS---------------------------
                Text(
                  "SUBTEAMS",
                  style: TextStyle(
                    color: const Color(0xff6987c9),
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 16
                            : 22
                        : 30,
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //------------------------------COLLABORATIONS---------------------------
                        Text(
                          "COLLABORATIONS",
                          style: TextStyle(
                            color: const Color(0xff6987c9),
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 16
                                    : 22
                                : 30,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Everyone's name",
                          style: TextStyle(
                            fontFamily: 'helvetica',
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 14
                                    : 16
                                : 18,
                          ),
                        ),
                        const SizedBox(height: 80),

                        //------------------------------WIKI---------------------------
                        Text(
                          "WIKI",
                          style: TextStyle(
                            color: const Color(0xff6987c9),
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 16
                                    : 22
                                : 30,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Everyone's name",
                          style: TextStyle(
                            fontFamily: 'helvetica',
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 14
                                    : 16
                                : 18,
                          ),
                        ),
                        const SizedBox(height: 80),

                        //------------------------------WIKI VOLUNTEERS---------------------------
                        Text(
                          "WIKI VOLUNTEERS",
                          style: TextStyle(
                            color: const Color(0xff6987c9),
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 16
                                    : 22
                                : 30,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Everyone's name",
                          style: TextStyle(
                            fontFamily: 'helvetica',
                            fontSize: MediaQuery.of(context).size.width <= 900
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 14
                                    : 16
                                : 18,
                          ),
                        ),
                        const SizedBox(height: 80),
                      ]),
                ),
                const SizedBox(height: 80),

                //------------------------------SUPPORT----------------------------
                Text(
                  "SUPPORT",
                  style: TextStyle(
                    color: const Color(0xff6987c9),
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 16
                            : 22
                        : 30,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Everyone's name",
                  style: TextStyle(
                    fontFamily: 'helvetica',
                    fontSize: MediaQuery.of(context).size.width <= 900
                        ? MediaQuery.of(context).size.width <= 500
                            ? 14
                            : 16
                        : 18,
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          const BottomBar(),
        ],
      ),
    );
  }
}
