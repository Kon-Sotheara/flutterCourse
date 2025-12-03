import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/model/quiz_model.dart';

class ResultTemplate extends StatelessWidget {
  const ResultTemplate({
    super.key,
    required this.questions,
    required this.selectedAnswers,
  });

  final List<QuestionModel> questions;
  final List<String> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          for (int index = 0; index < questions.length; index++)
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 18),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 66, 94, 204),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Q${index + 1}. ${questions[index].title}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  for (int i = 0; i < questions[index].choice.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        "Option ${i + 1}: ${questions[index].choice[i]}",
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  const SizedBox(height: 10),

                  Text(
                    "Your answer: ${selectedAnswers[index]}",
                    style: TextStyle(
                      color:
                          (selectedAnswers[index] ==
                              questions[index].isGoodChoice)
                          ? Colors.green
                          : Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  if (selectedAnswers[index] != questions[index].isGoodChoice)
                    Text(
                      "Correct answer: ${questions[index].isGoodChoice}",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
