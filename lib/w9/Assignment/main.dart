import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/ui/quiz_app.dart';
import 'package:project/w9/Assignment/data/quiz_data.dart';

void main() {
  runApp(QuizApp(initialScreen: Screen.welcomeScreen, quiz: sampleQuiz));
}
