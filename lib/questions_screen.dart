import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  void nextQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'What are the main building blocks of Flutter UIs?',
          style: TextStyle(
            color: Color.fromARGB(150, 255, 255, 255),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: null,
          child: Text(
            'Functions',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 15,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          child: Text(
            'Components',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 15,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          child: Text(
            'Blocks',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 15,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          child: Text(
            'Widgets',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
