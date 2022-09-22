import 'package:flutter/material.dart';
import 'package:igem/main.dart';
import 'package:igem/pages/drylabs/modeling.dart';
import 'package:igem/pages/introducing_team/attributions.dart';
import 'package:igem/pages/collab/collab.dart';
import 'package:igem/pages/wetlabs/experiments.dart';
import 'package:igem/pages/wetlabs/measurement.dart';
import 'package:igem/pages/wetlabs/notebook.dart';
import 'package:igem/pages/wetlabs/results.dart';
import 'package:igem/pages/wetlabs/safety.dart';
import 'package:igem/pages/introducing_team/teams.dart';

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
                    Row(children: [
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage())),
                          child: const Text('HOME',
                              style: TextStyle(
                                color: Color(0xff303f7b),
                                fontSize: 20,
                              ))),
                      const SizedBox(width: 75),
                      PopupMenuButton(
                        offset: const Offset(-15, 20),
                        elevation: 0,
                        position: PopupMenuPosition.under,
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            padding: EdgeInsets.zero,
                            child: MouseRegion(
                              onExit: (value) {
                                Navigator.pop(context);
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: const Text(
                                      'EXPERIMENTS',
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Experiments()));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Experiments()),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'MEASUREMENT',
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Measurement()));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Measurement()),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'NOTEBOOK',
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Notebook()));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Notebook()),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'RESULTS',
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Results()));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Results()),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'SAFETY',
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Safety()));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Safety()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        child: const Text(
                          'PROJECT',
                          style: TextStyle(
                            color: Color(0xff303f7b),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 75),
                      PopupMenuButton(
                          offset: const Offset(-15, 20),
                          elevation: 0,
                          position: PopupMenuPosition.under,
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                  padding: EdgeInsets.zero,
                                  child: MouseRegion(
                                    onExit: (value) {
                                      Navigator.pop(context);
                                    },
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: const Text(
                                            'MODELING',
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Modeling()));
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Modeling()),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                          child: const Text(
                            'PARTS',
                            style: TextStyle(
                              color: Color(0xff303f7b),
                              fontSize: 20,
                            ),
                          )),
                    ]),
                    Row(
                      children: [
                        PopupMenuButton(
                            offset: const Offset(15, 20),
                            elevation: 0,
                            position: PopupMenuPosition.under,
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    padding: EdgeInsets.zero,
                                    child: MouseRegion(
                                      onExit: (value) {
                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        children: [
                                          ListTile(
                                              title: const Text(
                                                'TEAMS',
                                                textAlign: TextAlign.end,
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const TeamsPage()));
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const TeamsPage()));
                                              }),
                                          ListTile(
                                              title: const Text(
                                                'ATTRIBUTIONS',
                                                textAlign: TextAlign.end,
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Attributions()));
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Attributions()));
                                              }),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                            child: const Text(
                              'TEAMS',
                              style: TextStyle(
                                color: Color(0xff303f7b),
                                fontSize: 20,
                              ),
                            )),
                        const SizedBox(width: 75),
                        TextButton(
                            onPressed: () {},
                            child: const Text('HP',
                                style: TextStyle(
                                  color: Color(0xff303f7b),
                                  fontSize: 20,
                                ))),
                        const SizedBox(width: 75),
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Collab())),
                            child: const Text('COLLAB',
                                style: TextStyle(
                                  color: Color(0xff303f7b),
                                  fontSize: 20,
                                ))),
                      ],
                    ),
                  ]),
            ),
          );
  }
}
