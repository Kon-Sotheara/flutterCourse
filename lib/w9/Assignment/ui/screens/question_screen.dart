import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/ui/widgets/answer_button.dart';
import 'package:project/w9/Assignment/ui/widgets/question_template.dart';
import 'package:project/w9/Assignment/model/quiz_model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.questions,
    required this.onFinished,
  });

  final List<QuestionModel> questions;
  final void Function(List<String> selectedAnswers) onFinished;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  final List<String> selectedAnswers = [];

  void _selectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (currentIndex == widget.questions.length - 1) {
      widget.onFinished(List.from(selectedAnswers));
    } else {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[currentIndex];
    final displayIndex = currentIndex + 1;
    final total = widget.questions.length;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),

          QuestionTemplate(
            question: question,
            questionNumber: displayIndex,
            totalQuestions: total,
          ),

          SizedBox(height: 30),

          ...question.choice.map((choice) {
            return AnswerButton(
              answer: choice,
              onPressed: () => _selectAnswer(choice),
            );
          }),
        ],
      ),
    );
  }
}
