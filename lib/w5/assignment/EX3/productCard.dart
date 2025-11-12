import 'package:flutter/material.dart';

enum Product {
  dart(
    tittle: "Dart",
    description: "the best languages",
    image: "assets/ex3/dart.png",
  ),
  flutter(
    tittle: "Flutter",
    description: "the best mobile widget library",
    image: "assets/ex3/flutter.png",
  ),
  firebase(
    tittle: "Firebase",
    description: "the base cloud database",
    image: "assets/ex3/firebase.png",
  );

  final String tittle;
  final String description;
  final String image;

  const Product({
    required this.tittle,
    required this.description,
    required this.image,
  });
}

class Productcard extends StatelessWidget {
  final Product product;
  const Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Image.asset(product.image, height: 80, width: 80,),
                Text(product.tittle, style: TextStyle(fontSize: 30),),
                Text(product.description, style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
