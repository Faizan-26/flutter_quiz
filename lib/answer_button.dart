import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onTap, {super.key});
  final String answer;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        elevation: 5,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: const Color.fromARGB(255, 60, 53, 53),
      ),
      onPressed: onTap,
      child: Text(answer, style: const TextStyle(color: Colors.white)),
    );
  }
}
