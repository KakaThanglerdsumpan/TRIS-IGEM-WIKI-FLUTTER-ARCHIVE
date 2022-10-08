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
                      SizedBox(width: 70),
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
                      SizedBox(width: 70),
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
                      SizedBox(width: 70),
                      const NavBarButton(pageName: 'hp'),
                      SizedBox(width: 70),
                      const NavBarButton(pageName: 'collab')
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const MyAppBar({Key? key}) : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(80);

//   @override
//   Widget build(BuildContext context) {
//     double spaceBetween = 25;
//     return MediaQuery.of(context).size.width < 1200
//         ? AppBar(
//             toolbarHeight: 80,
//             iconTheme: const IconThemeData(color: Color(0xff303f7b)),
//             backgroundColor: Colors.white,
//             centerTitle: false,
//             title: const Text("THAILAND_RIS",
//                 style: TextStyle(color: Color(0xff303f7b))),
//           )
//         : AppBar(
//             automaticallyImplyLeading: false,
//             toolbarHeight: 80,
//             backgroundColor: Colors.white,
//             flexibleSpace: Padding(
//               padding: const EdgeInsets.only(top: 28.0, left: 30, right: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   const NavBarButton(pageName: "home"),
//                   SizedBox(width: spaceBetween),
//                   NavBarDDButton(
//                     title: 'TEAM',
//                     subpages: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: const [
//                         NavBarTile(
//                           pageName: 'members',
//                         ),
//                         NavBarTile(
//                           pageName: 'attributions',
//                         ),
//                         NavBarTile(
//                           pageName: 'collaborations',
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: spaceBetween),
//                   NavBarDDButton(
//                     title: 'PROJECT',
//                     subpages: Column(
//                       children: const [
//                         NavBarTile(pageName: "description"),
//                         NavBarTile(pageName: "design"),
//                         NavBarTile(pageName: "engineering"),
//                         NavBarTile(pageName: "results"),
//                         NavBarTile(pageName: "implementation"),
//                         NavBarTile(pageName: "contribution"),
//                         NavBarTile(pageName: "notebook"),
//                         NavBarTile(pageName: "safety"),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: spaceBetween),
//                   NavBarDDButton(
//                     title: 'MODEL',
//                     subpages: Column(
//                       children: const [
//                         NavBarTile(pageName: 'gene sequencing'),
//                         NavBarTile(pageName: 'circular dna'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: spaceBetween),
//                   NavBarDDButton(
//                     title: 'PARTS',
//                     subpages: Column(
//                       children: const [
//                         NavBarTile(pageName: 'parts collection'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: spaceBetween),
//                   NavBarDDButton(
//                     title: 'HUMAN PRACTICES',
//                     subpages: Column(
//                       children: const [
//                         NavBarTile(pageName: 'integrated human practices'),
//                         NavBarTile(pageName: 'educational outreach'),
//                         NavBarTile(pageName: 'partnership'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: spaceBetween),
//                   const NavBarButton(pageName: 'judging form'),
//                 ],
//               ),
//             ),
//           );
//   }
// }
