import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  const CustomCard({
    super.key,
    this.color = const Color(0xffBBDEFB),
    required this.text,
  }) : gradient = null;


  const CustomCard.linear({super.key, required this.text})
    : color = null,
      gradient = const LinearGradient(
        colors: [Color(0xFF64B5F6), Color(0xFF0D47A1)],
  );

  final Gradient? gradient;
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: color,
            gradient: gradient,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
