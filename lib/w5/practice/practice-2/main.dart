import 'package:flutter/material.dart';
import 'package:project/w5/practice/practice-2/gradientButton.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              GradientButton(text: "hello1", start: Colors.blue, end: Colors.red),
              GradientButton(text: "hello2", start: Colors.blue, end: Colors.red),
              GradientButton(text: "hello3", start: Colors.blue, end: Colors.red),
            ],
          ),
        ),
      ),
    )
  );
}