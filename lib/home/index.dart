import 'package:flutter/material.dart';
import 'home_1.dart';
import 'home_2.dart';
import '../common_widgets/bottom_bar.dart';
import '../common_widgets/navbar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Material(
      borderOnForeground: true,
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[navBar(), homeOne(), homeTwo(), bottomBar()],
            )
          ],
        ),
      ),
    );
  }
}
