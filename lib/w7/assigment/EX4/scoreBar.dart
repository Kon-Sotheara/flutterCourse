import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.green,
          child: ListView(
            children: [
              Scorebar(title: "Flutter", child: ScoreManagement(initialScore: 3),),
              Scorebar(title: "Dart", child: ScoreManagement(initialScore: 5),),
              Scorebar(title: "React", child: ScoreManagement( ),),
            ],
          ),
        ),
      ),
    ),
  );
}

class Scorebar extends StatelessWidget {
  const Scorebar({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My Score in $title",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          child
        ],
      ),
    );
  }
}

class ScoreManagement extends StatefulWidget {
  const ScoreManagement({super.key, this.initialScore = 1});
  final int initialScore;

  @override
  State<ScoreManagement> createState() => _ScoreManagementState();
}

class _ScoreManagementState extends State<ScoreManagement> {

  double width = 400;
  int maxScore = 10;

  late int currentScore = widget.initialScore;

  double get progressScore => (width / maxScore) * currentScore;
  Color get scoreColor {
    if (currentScore >= 1 && currentScore <= 4) {
      return Color(0xFF69C97C);
    } else if (currentScore >= 5 && currentScore <= 7) {
      return Color(0xFF00B141);
    } else if (currentScore >= 8 && currentScore <= 10) {
      return Color(0xFF006014);
    }
    return Colors.grey;
  }

  void removeScore () {
    setState(() {
      if (currentScore > 1) {
        currentScore --;
      }
    });
  }

  void addScore () {
    setState(() {
      if (currentScore < 10) {
        currentScore ++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: currentScore > 1 ? removeScore : null , 
              icon: Icon(Icons.remove)
            ),
            IconButton(
              onPressed: currentScore < 10 ? addScore : null, 
              icon: Icon(Icons.add)
            ),
          ],
        ),
        const SizedBox(height: 5),
        Stack(
          children: [
            Container(
              height: 60,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 60,
              width: progressScore,
              decoration: BoxDecoration(
                color: scoreColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
