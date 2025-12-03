import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/model/quiz_model.dart';

class QuestionTemplate extends StatelessWidget {
  const QuestionTemplate({
    super.key,
    required this.question,
    required this.questionNumber,
    required this.totalQuestions,
  });

  final QuestionModel question;
  final int questionNumber;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 140,
          width: 400,
          alignment: Alignment.center,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            question.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(221, 38, 24, 144),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(221, 38, 24, 144),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'Question $questionNumber of $totalQuestions',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
