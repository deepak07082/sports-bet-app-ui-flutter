import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'ex.dart';

class SpleashScreen extends StatefulWidget {
  @override
  _SpleashScreenState createState() => _SpleashScreenState();
}

class _SpleashScreenState extends State<SpleashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 15), start);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF0FDADA),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.17,
            child: FlareActor(
              "assets/spleash.flr",
              fit: BoxFit.contain,
              animation: "start",
            ),
          ),
        ),
      ),
    );
  }

  start() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => ProvidedStylesExample(),
        ),
      );
    });
  }
}
