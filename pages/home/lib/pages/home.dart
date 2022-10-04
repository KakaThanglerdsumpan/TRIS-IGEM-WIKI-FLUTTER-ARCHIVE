import 'package:flutter/material.dart';
import 'package:igem/modules/bottombar.dart';

import '../modules/navigation/appbars.dart';
import '../modules/navigation/sidemenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Colors.white, Colors.indigo])),
      child: SafeArea(
        child: Scaffold(
          appBar: const MyAppBar(),
          drawer: const SideMenu(),
          backgroundColor: Colors.transparent,
          body: ListView(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  const Text(
                    'THAILAND_RIS',
                    style: TextStyle(
                        fontSize: 80,
                        fontFamily: 'Rockabye',
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Simple Description',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Helvetica',
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 600,
                    height: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(10, 0))
                      ],
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Colors.indigo,
                        ],
                      ),
                    ),
                    child: Image.network(
                        'https://static.igem.wiki/teams/4314/wiki/igemlogotransparent.png'),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                ]),
              ),
            ),
            BottomBar(),
          ]),
        ),
      ),
    );
  }
}
