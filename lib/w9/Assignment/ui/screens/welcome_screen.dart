import 'package:flutter/material.dart';
import 'package:project/w9/Assignment/ui/quiz_app.dart';
import 'package:project/w9/Assignment/ui/widgets/app_button.dart';

const image = "assets/w9/quiz-logo.png";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.onChange});

  final ValueChanged<Screen> onChange;

  void start() => onChange(Screen.questionScreen);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: 500, height: 500),
        const SizedBox(height: 20),
        AppButton(label: "Start Quiz", onChangeScreen: start)
      ],
    );
  }
}
