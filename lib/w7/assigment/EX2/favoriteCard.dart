import 'package:flutter/material.dart';
import 'package:project/w7/assigment/EX2/cardButtton.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            Cardbuttton(),
            Cardbuttton(),
            Cardbuttton(),
        ],
      ),
    ),
  )
);
