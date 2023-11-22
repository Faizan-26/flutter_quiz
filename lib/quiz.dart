import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_screen.dart';
import 'package:flutter_quiz/welcome_screen.dart';

const List<Color> bgColors = [
  Color.fromARGB(255, 185, 44, 241),
  Color.fromARGB(255, 118, 14, 159),
  Color.fromARGB(255, 80, 1, 111),
];

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? activeScreen ; // welcome screen or question screen

  @override
  void initState() {
    super.initState();
     activeScreen = WelcomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = const Questions();
      },
    );
  }
  

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
