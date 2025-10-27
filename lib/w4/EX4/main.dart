import 'package:flutter/material.dart';
import 'package:project/w4/EX4/customCard.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomCard(text: 'OOP', color: Color(0xffBBDEFB)),
            CustomCard(text: "DART", color: Color(0xff64B5F6)),

            // CustomCard(text: "FLUTTER", color: Color(0xff0392F5)),
            // call linear gradiant 
            CustomCard.linear(text: "FLUTTER"),
          ],
        ),
      )
    )
  );
}
