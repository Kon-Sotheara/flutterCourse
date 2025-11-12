import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Container(width: 50, color: Colors.blue),
                  Container(width: 100, color: Colors.amber),
                  Expanded(child: Container(color: Colors.blue)),
                  Container(width: 100, color: Colors.amber),
                  Container(width: 50, color: Colors.blue),
                ],
              ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(
                  flex: 1, 
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.orange,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    ),
  );
}
