import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/ui/screens/question_screen.dart';
import 'package:project/w9/Assignment/ui/screens/result_screen.dart';
import 'package:project/w9/Assignment/ui/screens/welcome_screen.dart';
import 'package:project/w9/Assignment/model/quiz_model.dart';

enum Screen { welcomeScreen, questionScreen, resultScreen }

class QuizApp extends StatefulWidget {
  const QuizApp({super.key, required this.initialScreen, required this.quiz});

  final Screen initialScreen;
  final QuizModel quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Screen currrenscreen = Screen.welcomeScreen;
  List<String> quizSelectedAnswers = [];

  @override
  void initState() {
    super.initState();
    currrenscreen = widget.initialScreen;
  }

  void handledScreenChange(Screen newScreen) {
    setState(() {
      currrenscreen = newScreen;
    });
  }

  void onQuizFinished(List<String> answers) {
    setState(() {
      quizSelectedAnswers = answers;
      currrenscreen = Screen.resultScreen;
    });
  }

  void restartQuiz() {
    setState(() {
      currrenscreen = Screen.welcomeScreen;
    });
  }

  Widget? getCurrentScreen() {
    switch (currrenscreen) {
      case Screen.welcomeScreen:
        return WelcomeScreen(onChange: handledScreenChange);
      case Screen.questionScreen:
        return QuestionScreen(
          questions: widget.quiz.questions,
          onFinished: onQuizFinished,
        );
      case Screen.resultScreen:
        return ResultScreen(
          score: widget.quiz.calculateScore(quizSelectedAnswers),
          totalQuestions: widget.quiz.questions.length,
          questions: widget.quiz.questions,
          selectedAnswers: quizSelectedAnswers,
          onRestart: restartQuiz,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(child: Container(child: getCurrentScreen())),
      ),
    );
  }
}
