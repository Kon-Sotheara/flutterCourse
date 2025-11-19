import 'package:flutter/material.dart';

List<String> images = [
  "assets/w7/bird.jpg",
  "assets/w7/bird2.jpg",
  "assets/w7/girl.jpg",
  "assets/w7/insect.jpg",
  "assets/w7/man.jpg",
];

void main() {
  runApp(
    MyGallary()
  );
}

class MyGallary extends StatefulWidget {
  const MyGallary({super.key});

  @override
  State<MyGallary> createState() => _MyGallaryState();
}

class _MyGallaryState extends State<MyGallary> {
  late int indexImage = 2;

  void toPrevious() {
    setState(() {
      if (indexImage == 0) {
        indexImage = images.length - 1;
      }
      indexImage--;
    });
  }

  void toNext() {
    setState(() {
      if (indexImage == (images.length - 1)) {
        indexImage = 0;
      }
      indexImage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this is used to hide the red Debug banner that appears on the top-right corner when running a Flutter app in debug mode.
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: toPrevious,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: toNext,
              ),
            ),
          ],
        ),
        body: Image.asset(images[indexImage]),
      ),
    );
  }
}
