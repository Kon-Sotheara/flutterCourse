import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  void onCreate() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(decoration: InputDecoration(label: Text("Title")), maxLength: 20,),
        TextField(decoration: InputDecoration(label: Text("Price")), maxLength: 20,),
        ElevatedButton(onPressed: onCreate, child: Text("Create") ),
      ],
    );
  }
}
