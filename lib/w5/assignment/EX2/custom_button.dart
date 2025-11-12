import 'package:flutter/material.dart';

enum Position { left, right }
enum Type { primary, secondary, disabled }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData iconData;
  final Position position;
  final Type type;

  const CustomButton({
    super.key,
    required this.label,
    required this.iconData,
    this.position = Position.left,
    this.type = Type.primary,
  });

  Color getColor(Type type) {
    switch (type) {
      case Type.primary:
        return Colors.blue;
      case Type.secondary:
        return Colors.green;
      case Type.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 40,
          decoration: BoxDecoration(
            color: getColor(type),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: position == Position.left
                ? [
                    Icon(iconData, color: Colors.blueGrey),
                    const SizedBox(width: 8),
                    Text(
                      label,
                      style: const TextStyle(color: Colors.blueGrey),
                    ),
                  ]
                : [
                    Text(
                      label,
                      style: const TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(width: 8),
                    Icon(iconData, color: Colors.blueGrey),
                  ],
            ),
          ),
        ),
      ],
    );
  }
}
