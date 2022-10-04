import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'pages/drylab_notebook.dart';
import 'pages/modeling.dart';
import 'pages/attributions.dart';
import 'pages/teams.dart';
import 'pages/experiments.dart';
import 'pages/measurement.dart';
import 'pages/notebook.dart';
import 'pages/results.dart';

import 'pages/collab.dart';
import 'pages/home.dart';
import 'pages/safety.dart';

void main() {
  setPathUrlStrategy();
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
