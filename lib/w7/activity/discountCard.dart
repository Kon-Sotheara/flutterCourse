import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold()),
  );
}

class Discountcard extends StatefulWidget {
  const Discountcard({
    super.key,
    required this.price,
    required this.discountRace,
  });
  final int price;
  final double discountRace;

  @override
  State<Discountcard> createState() => _DisCountCardState();
}

class _DisCountCardState extends State<Discountcard> {
  bool discountApplied = false;
  Color get backgroundColor => discountApplied ? Colors.pink : Colors.black;
  String get labelText => discountApplied ? "Discount" : "No Discount";
  int get effectivePrice => discountApplied
      ? (widget.price * (1 - widget.discountRace)).floor()
      : widget.price;

  String get priceLabel => "\$ $effectivePrice";

  void onDisCount() {
    setState(() {
      discountApplied = !discountApplied;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(priceLabel),
          Text(labelText),
          ElevatedButton(
            onPressed: onDisCount,
            child: Text("Applied Discount"),
          ),
        ],
      ),
    );
  }
}
