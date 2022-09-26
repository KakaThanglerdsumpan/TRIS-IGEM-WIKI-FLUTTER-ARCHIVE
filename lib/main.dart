import 'package:flutter/material.dart';
import 'package:igem/configure_url.dart';
import 'package:igem/pages/drylabs/drylab_notebook.dart';
import 'package:igem/pages/drylabs/modeling.dart';
import 'package:igem/pages/introducing_team/attributions.dart';
import 'package:igem/pages/introducing_team/teams.dart';
import 'package:igem/pages/wetlabs/experiments.dart';
import 'package:igem/pages/wetlabs/measurement.dart';
import 'package:igem/pages/wetlabs/notebook.dart';
import 'package:igem/pages/wetlabs/results.dart';

import 'pages/collab/collab.dart';
import 'pages/home/home.dart';
import 'pages/wetlabs/safety.dart';

void main() {
  configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Thailand_RIS',
      theme: ThemeData(fontFamily: 'DrukWide'),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/collab': (context) => const Collab(),
        '/modeling': (context) => const Modeling(),
        '/drylabnotebook': (context) => const DrylabNotebook(),
        '/experiments': (context) => const Experiments(),
        '/measurement': (context) => const Measurement(),
        '/notebook': (context) => const Notebook(),
        '/results': (context) => const Results(),
        '/safety': (context) => const Safety(),
        '/teams': (context) => const TeamsPage(),
        '/attributions': (context) => const Attributions(),
      },
    );
  }
}
