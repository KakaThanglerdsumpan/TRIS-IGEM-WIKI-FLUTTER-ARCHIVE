import 'package:flutter/material.dart';
import 'navbar_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 1120
        ? AppBar(
            toolbarHeight: 80,
            iconTheme: const IconThemeData(color: Color(0xff303f7b)),
            backgroundColor: Colors.white,
            centerTitle: false,
            title: const Text("THAILAND_RIS",
                style: TextStyle(color: Color(0xff303f7b))),
          )
        : AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const NavBarButton(pageName: "home"),
                      const SizedBox(width: 75),
                      NavBarDDButton(
                        title: 'WETLAB',
                        subpages: Column(
                          children: const [
                            NavBarTile(pageName: "experiments"),
                            NavBarTile(pageName: "measurement"),
                            NavBarTile(pageName: "notebook"),
                            NavBarTile(pageName: "results"),
                            NavBarTile(pageName: "safety"),
                          ],
                        ),
                      ),
                      const SizedBox(width: 75),
                      NavBarDDButton(
                        title: 'DRYLAB',
                        subpages: Column(
                          children: const [
                            NavBarTile(pageName: 'modeling'),
                            NavBarTile(pageName: 'drylabnotebook'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      NavBarDDButton(
                        title: 'TEAMS',
                        alignment: 'right',
                        subpages: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            NavBarTile(
                              pageName: 'teams',
                              alignment: 'right',
                            ),
                            NavBarTile(
                              pageName: 'attributions',
                              alignment: 'right',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 75),
                      const NavBarButton(pageName: 'hp'),
                      const SizedBox(width: 75),
                      const NavBarButton(pageName: 'collab')
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
