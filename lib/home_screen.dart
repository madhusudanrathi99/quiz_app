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
          'images/quiz-logo.png',
          height: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
