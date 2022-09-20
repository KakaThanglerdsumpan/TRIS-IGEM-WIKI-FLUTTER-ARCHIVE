import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './home/index.dart';
import './project/index.dart';
import './url_strategy/configure_nonweb.dart'
    if (dart.library.html) './url_strategy/configure_web.dart';

void main() {
  configureApp();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'GoRouter Example',
    );
  }
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return home();
        },
      ),
      GoRoute(
        path: '/projects',
        builder: (BuildContext context, GoRouterState state) {
          return project();
        },
      ),
    ],
  ); 
}
