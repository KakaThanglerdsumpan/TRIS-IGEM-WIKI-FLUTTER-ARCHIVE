import 'package:flutter/material.dart';
import './home/index.dart';
import './project/index.dart';
import './url_strategy/configure_nonweb.dart'
    if (dart.library.html) './url_strategy/configure_web.dart';

void main() {
  configureApp();
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => home(),
        '/projects': (context) => project(),
      },
    );
  }
}
