import 'package:flutter/material.dart';
import './project_1.dart';
import '../common_widgets/navbar.dart';

class project extends StatefulWidget {
  const project({Key? key}) : super(key: key);

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderOnForeground: true,
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[navBar(), projectOne()],
            )
          ],
        ),
      ),
    );
  }
}
