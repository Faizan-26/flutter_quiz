import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onTap, {super.key});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor: const Color.fromARGB(255, 170, 155, 199),
          backgroundColor: const Color.fromARGB(255, 60, 53, 53),
          elevation: 5,
          side: const BorderSide(style: BorderStyle.solid),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color.fromARGB(255, 60, 53, 53),
        ),
        onPressed: onTap,
        child: Text(answer,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center),
      ),
    );
  }
}
