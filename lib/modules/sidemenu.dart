import 'package:flutter/material.dart';
import 'package:igem/main.dart';
import 'package:igem/pages/introducing_team/attributions.dart';
import 'package:igem/pages/collab/collab.dart';
import 'package:igem/pages/wetlabs/experiments.dart';
import 'package:igem/pages/wetlabs/measurement.dart';
import 'package:igem/pages/wetlabs/notebook.dart';
import 'package:igem/pages/wetlabs/results.dart';
import 'package:igem/pages/wetlabs/safety.dart';
import 'package:igem/pages/introducing_team/teams.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'THAILAND_RIS',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          ListTile(
              title: const Text('HOME'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()))),
          ExpansionTile(
            textColor: Colors.indigo,
            iconColor: Colors.indigo,
            title: const Text('PROJECT'),
            children: [
              ListTile(
                title: const Text(
                  'EXPERIMENTS',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Experiments()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Experiments()),
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
                          builder: (context) => const Measurement()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Measurement()),
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
                          builder: (context) => const Notebook()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Notebook()),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'RESULTS',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Results()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Results()),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'SAFETY',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Safety()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Safety()),
                  );
                },
              ),
            ],
          ),
          ListTile(
            title: const Text('PARTS'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ExpansionTile(
            textColor: Colors.indigo,
            iconColor: Colors.indigo,
            title: const Text('TEAMS'),
            children: [
              ListTile(
                title: const Text('\tTEAMS'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TeamsPage())),
              ),
              ListTile(
                title: const Text('\tATTRIBUTIONS'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Attributions())),
              ),
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
          ListTile(
              title: const Text('COLLAB'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Collab()))),
        ],
      ),
    );
  }
}
