import 'package:flutter/material.dart';
import 'package:project/w5/assignment/EX3/productCard.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Products")),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsetsGeometry.all(25),
          child: Column(
            children: [
              Productcard(product: Product.dart),
              Productcard(product: Product.flutter),
              Productcard(product: Product.firebase)
            ],
          ),
        ),
      ),
    )
  );
}