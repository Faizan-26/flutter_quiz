import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
// Map is data structure same like struct in JavaScript having key value pair
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Answers X out of ${questions.length} questions",
              style: const TextStyle(),
            ),
            const SizedBox(height: 30),
            const Text("LIST OF ANSWERS AND QUESTIONS"),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
