import 'package:flutter/material.dart';

import 'navbar_button.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.indigo,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Image.network(
                        'https://static.igem.wiki/teams/4314/wiki/igemlogo2.png'),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'THAILAND_RIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const NavBarTile(pageName: 'home'),
          const ExpansionTile(
            textColor: Colors.indigo,
            iconColor: Colors.indigo,
            title: Text('WETLAB'),
            children: [
              NavBarTile(pageName: "experiments"),
              NavBarTile(pageName: "measurement"),
              NavBarTile(pageName: "notebook"),
              NavBarTile(pageName: "results"),
              NavBarTile(pageName: "safety"),
            ],
          ),
          const ExpansionTile(
            textColor: Colors.indigo,
            iconColor: Colors.indigo,
            title: Text('DRYLAB'),
            children: [
              NavBarTile(pageName: 'modeling'),
              NavBarTile(pageName: 'drylabnotebook'),
            ],
          ),
          const ExpansionTile(
            textColor: Colors.indigo,
            iconColor: Colors.indigo,
            title: Text('TEAMS'),
            children: [
              NavBarTile(pageName: 'teams'),
              NavBarTile(pageName: 'attributions'),
            ],
          ),
          ListTile(
            title: const Text('HP'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const NavBarTile(pageName: 'collab')
        ],
      ),
    );
  }
}
