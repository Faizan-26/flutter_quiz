import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelect, {Key? key}) : super(key: key);

  final void Function(String answer) onSelect;

  @override
  State<Questions> createState() {
    return _ListOfQuestion();
  } 
}

class _ListOfQuestion extends State<Questions> {
  // Variable to keep track of the current question index
  int currentQuestionIndex = 0;

  // Function to handle the answer submission
  void answerQuestion(String selectedans) {
    widget.onSelect(selectedans); // widget is used to access the widget class  widget is build in state class that we extend
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the current question from the list of questions
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // Add padding to the container
          padding: const EdgeInsets.all(20),

          // Add margin to the container
          margin: const EdgeInsets.all(20),

          // Create a column to display the question and its options
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Display the question text
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 60, 53, 53),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),

              // Add some space between the question and the options
              const SizedBox(height: 30),
              // ... is a spread operator which is used to expand the list
              // Display the shuffled options as answer buttons
              ...currentQuestion.getShuffledAnswers().map(
                (answer) {
                  return AnswerButton(
                    answer,
                    () { // onTap
                      answerQuestion(answer);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
//In this code, we have a `Questions` widget that displays a list of questions. Each question has a text and a list of possible answers. The `AnswerButton` widget is used to display the answers.
//
//The `_ListOfQuestion` stateful widget manages the state of the current question index. When the user selects an answer, the `answerQuestion` function is called, which increments the current question index.
//
//The `build` method of the `_ListOfQuestion` widget creates a `Column` widget with the question text and the answer buttons. The `Column` widget is wrapped in a `Container` widget to add padding and margin.
//
//The `Text` widget is used to display the question text, and the `AnswerButton` widgets are created using the `map` function on the list of shuffled answers.
//
//The `SizedBox` widget with `height: 30` is used to add some space between the question and the answer buttons..</s>