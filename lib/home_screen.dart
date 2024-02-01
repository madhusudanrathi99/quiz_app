import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void startQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('Learn Flutter the fun way!'),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: startQuiz, child: const Text('Start Quiz')),
      ],
    );
  }
}
