import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/model/quiz_model.dart';
import 'package:project/w9/Assignment/ui/widgets/app_button.dart';
import 'package:project/w9/Assignment/ui/widgets/result_template.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.questions,
    required this.selectedAnswers,
    required this.onRestart,
  });

  final int score;
  final int totalQuestions;
  final List<QuestionModel> questions;
  final List<String> selectedAnswers;
  final VoidCallback onRestart;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
              'Your Result $score of $totalQuestions correct',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
        ),
        Expanded(
          child: ResultTemplate(
            questions: questions,
            selectedAnswers: selectedAnswers,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: AppButton(label: 'Restart Quiz', onChangeScreen: onRestart),
        ),
      ],
    );
  }
}
