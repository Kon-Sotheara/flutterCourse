// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class AnswerModel {
  final String id;
  final String questionId;
  final String answerChoice;

  AnswerModel({required this.answerChoice, required this.questionId})
    : id = uuid.v4();

  bool isCorrect(QuestionModel question) {
    return questionId == question.id && answerChoice == question.isGoodChoice;
  }
}

class QuestionModel {
  final String id;
  final String title;
  final List<String> choice;
  final String isGoodChoice;

  QuestionModel({
    required this.title,
    required this.choice,
    required this.isGoodChoice,
  }) : id = uuid.v4();
}

class QuizModel {
  List<QuestionModel> questions;
  List<AnswerModel> answers;

  QuizModel({required this.questions, required this.answers});

  int calculateScore(List<String> selectedAnswers) {
    int score = 0;
    for (int i = 0; i < selectedAnswers.length; i++) {
      if (selectedAnswers[i] == questions[i].isGoodChoice) {
        score++;
      }
    }
    return score;
  }
}
