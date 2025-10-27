import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.blue[300],
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Center(
            child: Text(
              'CADT STUDENTS', 
              style: TextStyle(
                color: Colors.white, 
               decoration: TextDecoration.none)
            ), 
          ),
        ),
      ),
    ),      
  );
}
