import 'package:flutter/material.dart';

class Local extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: Text("Local"),
        ),
      ),
    );
  }
}