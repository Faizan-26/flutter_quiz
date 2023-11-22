import 'package:flutter/material.dart';

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
    return const Center(child: Text("This is LIST OF QUESTIONS."));
  }
}
