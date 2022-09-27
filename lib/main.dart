import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './home/index.dart';
import './utils/configure_nonweb.dart'
    if (dart.library.html) './utils/configure_web.dart';

void main() {
  configureApp();
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

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
          return home();
        },
      ),
    ],
  );
}
