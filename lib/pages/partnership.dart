import 'package:flutter/material.dart';
import '../modules/bottombar.dart';
import '../modules/navigation/appbars.dart';
import '../modules/headercontainer.dart';
import '../modules/navigation/sidemenu.dart';
import '../modules/titlescreen.dart';

class Partnership extends StatelessWidget {
  const Partnership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideMenu(),
      body: ListView(children: [
        const TitleScreen(
          ovalMultiplier: 50,
          pageTitle: 'PARTNERSHIP',
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
              const HeaderContainer(text: 'IGEM PROTOCOL'),
              const SizedBox(height: 30),
              SelectableText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar quis nisl sed tempor. Quisque malesuada mauris quis lacinia tristique. Nunc et ex non massa tempor accumsan eget sit amet neque. Integer sit amet viverra ante. Maecenas lacinia ipsum nec pretium varius. Suspendisse feugiat arcu in leo elementum, ac finibus ligula cursus. Quisque luctus augue volutpat ligula bibendum pharetra. Nulla et semper mi. Proin mattis dolor at diam tempus vestibulum sed vestibulum leo. Nam sed metus nec est mattis tristique eu id enim. Nullam eget aliquet neque. Nunc erat quam, condimentum nec lacus vel, pulvinar pulvinar nulla. Vivamus ac fringilla ex, eget posuere arcu. Ut fermentum condimentum massa eget rutrum. Fusce cursus vestibulum dui quis ornare.",
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
      ]),
    );
  }
}
