import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return ListOfQuestions();
  }
}

class ListOfQuestions extends State<Questions> {
  @override
  Widget build(context) {
    final currentquestion = questions[0];
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentquestion.text,
              style: const TextStyle(
                // backgroundColor: Colors.white,
                color: Colors.white,
              ),
            ), //questions here
            const SizedBox(height: 30),
            ...currentquestion.answers.map(
              (answer) {
                return AnswerButton(answer, () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
