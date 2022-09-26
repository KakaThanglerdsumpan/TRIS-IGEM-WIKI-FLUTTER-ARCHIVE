import 'package:flutter/material.dart';

import '../../modules/navigation/appbars.dart';
import '../../modules/navigation/sidemenu.dart';

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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
            child: Align(
              alignment: Alignment.center,
              child: Row(children: [
                Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
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
                ),
                const SizedBox(
                  width: 150,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'THAILAND_RIS',
                        style: TextStyle(fontSize: 50),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
