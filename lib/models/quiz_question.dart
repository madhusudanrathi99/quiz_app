class QuizQuestion {
  const QuizQuestion(this.question, this.options);

  final String question;
  final List<String> options;

  List<String> getShuffledAnswers() {
    final answers = List.of(options);
    answers.shuffle();
    return answers;
  }
}
