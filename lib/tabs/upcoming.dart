import 'package:flutter/material.dart';


class Upcoming extends StatelessWidget {
  const Upcoming({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        child: Center(
          child: Text("upcoming"),
        ),
      ),
    );
  }
}