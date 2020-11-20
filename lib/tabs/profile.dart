import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purpleAccent,
        child: Center(
          child: Text("Profile"),
        ),
      ),
    );
  }
}
