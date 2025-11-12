import 'package:flutter/material.dart';
import 'package:project/w5/assignment/EX2/custom_button.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom buttons")),
        body: Padding(
          padding: EdgeInsetsGeometry.only(left: 15, right: 15, top: 40),
          child: Column(
            children: [
              CustomButton(label: "Submit", iconData: Icons.done,position: Position.left, type: Type.primary,),
              CustomButton(label: "Time", iconData: Icons.lock_clock, position: Position.right, type: Type.secondary,),
              CustomButton(label: "Account", iconData: Icons.dashboard_customize_sharp, position: Position.right, type: Type.disabled,),
            ],
          ),
        ),
      ),
    ),
  );
}
