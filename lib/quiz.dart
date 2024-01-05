import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/question_screen.dart';
import 'package:flutter_quiz/result_screen.dart';
import 'package:flutter_quiz/welcome_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

const List<Color> bgColors = [
  Color.fromARGB(255, 25, 178, 238),
  Color.fromARGB(255, 21, 236, 229),
];

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  // _ makes it private
  List<String> selectedAnswers = []; // list of selected answers

  void chooseAnswer(String ans) {
    selectedAnswers.add(ans); // .add
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
            chosenAnswers: selectedAnswers,
            isRestartButtonPressed: restartQuiz);
        selectedAnswers = [];
      });
    }
  }

  Widget? activeScreen; // welcome screen or question screen
  @override
  void initState() {
    super.initState();
    activeScreen = WelcomeScreen(switchScreen);
  }

  void restartQuiz() {
    setState(() {
      activeScreen = Questions(chooseAnswer);
    });
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = Questions(chooseAnswer);
      },
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Flutter Quiz",
              textAlign: TextAlign.center,
         //     style: TextStyle(fontFamily: GoogleFonts.lato),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: bgColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
