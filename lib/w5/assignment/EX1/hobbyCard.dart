import 'package:flutter/material.dart';

class Hobbycard extends StatelessWidget {
  final String tittle;
  final IconData iconData;
  final Color color;

  const Hobbycard({super.key, required this.tittle, required this.iconData, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 20,
                    top: 40,
                    bottom: 40,
                  ),
                  child: Icon(iconData, color: Colors.white),
                ),
                Text(
                  tittle,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
