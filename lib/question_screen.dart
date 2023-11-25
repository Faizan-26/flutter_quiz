import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _ListOfQuestion();
  }
}

class _ListOfQuestion extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // padding:const EdgeInsets.all(20), // do same as margin here
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentquestion.text,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 210, 155, 240),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ), //questions here
              const SizedBox(height: 30),
              ...currentquestion.getShuffledAnswers().map(
                (answer) {
                  return AnswerButton(answer, answerQuestion);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
