import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Selectedbutton(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Selectedbutton(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Selectedbutton(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Selectedbutton(),
            ),
          ],
        ),
      ),
    ),
  ),
);

class Selectedbutton extends StatefulWidget {
  const Selectedbutton({super.key});

  @override
  State<Selectedbutton> createState() => _SelectedbuttonState();
}

class _SelectedbuttonState extends State<Selectedbutton> {
  bool selected = false;
  Color? get backgroundColor => selected ? Colors.blue[50] : Colors.blue[500];
  Color get textColor => selected ? Colors.black : Colors.white;
  String get labelText => selected ? "Not Selected" : "Selected";

  void onselected() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, 
            foregroundColor: textColor
          ),
          onPressed: onselected,
          child: Center(child: Text(labelText)),
        ),
      ),
    );
  }
}
