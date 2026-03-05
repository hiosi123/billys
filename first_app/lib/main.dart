import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: GradientConatiner(
          colors: [Colors.yellow, Colors.blue, Colors.red],
        ),
      ),
    ),
  ); // calling a function
}
