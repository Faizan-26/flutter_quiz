import 'package:flutter/material.dart';

class QuestionIdenifier extends StatelessWidget {
  const QuestionIdenifier(
      {super.key,
      required this.isCorrectedAnswer,
      required this.questionNumber});
  final bool isCorrectedAnswer;
  final int questionNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectedAnswer ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
