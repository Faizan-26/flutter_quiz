import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            "Lets me ask you some flutter !",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.yellow),
            ),
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
