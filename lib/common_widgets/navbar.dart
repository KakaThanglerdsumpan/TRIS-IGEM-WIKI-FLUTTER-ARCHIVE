import 'package:flutter/material.dart';

class navBar extends StatelessWidget implements PreferredSizeWidget {
  const navBar({Key? key}) : super(key: key);

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
                          onPressed: () {
                            Navigator.of(context).pushNamed('/');
                          },
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
                                            'INDEX',
                                          ),
                                          onTap: () {
                                            // TODO: noot fullly working
                                            Navigator.of(context)
                                                .pushNamed('/projects');
                                          },
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'EXPERIMENTS',
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'MEASUREMENT',
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'NOTEBOOK',
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'RESULTS',
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'SAFETY',
                                          ),
                                          onTap: () {},
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
                          )),
                      const SizedBox(width: 75),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/');
                          },
                          child: const Text('PARTS',
                              style: TextStyle(
                                color: Color(0xff303f7b),
                                fontSize: 20,
                              ))),
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
                                              onTap: () {}),
                                          ListTile(
                                              title: const Text(
                                                'ATTRIBUTIONS',
                                                textAlign: TextAlign.end,
                                              ),
                                              onTap: () {}),
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
                            onPressed: () {},
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