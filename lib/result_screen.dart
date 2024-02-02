import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.selectedAnswers, this.restartQuiz, {super.key});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;
  final int correct = 0;
  final int total = questions.length;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summaryData.add({
        "question_index": i,
        "question": questions[i].question,
        "selectedAnswer": selectedAnswers[i],
        "correctAnswer": questions[i].options[0],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $correct out of $total questions correctly!",
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: restartQuiz,
            icon: const Icon(Icons.refresh),
            label: const Text("Restart Quiz!"),
          ),
        ],
      ),
    );
  }
}
