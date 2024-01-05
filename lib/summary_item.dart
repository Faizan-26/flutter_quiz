import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.summaryItemData});
  final Map<String, Object> summaryItemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryItemData["correct_answer"] == summaryItemData["chosen_answer"];
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionIdenifier(
              questionNumber: (summaryItemData['question_index'] as int) + 1,
              isCorrectedAnswer: isCorrectAnswer,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    summaryItemData['question'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Correct Answer: ${summaryItemData['correct_answer']}",
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 49, 71, 9),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Your Answer: ${summaryItemData['chosen_answer']}",
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 61, 39, 39),
                      fontSize: 14,
                    ),
                  ),
                  // const Divider(color: Colors.white)
                ],
              ),
            )
          ],
        ));
  }
}

// Row(children: [
//               Text(
//                 ((e["question_index"] as int) + 1).toString(),
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     backgroundColor: Colors.black),
//               ), //QUestion number here
//               Expanded(
//                 child: Column(
//                   children: [
//                     Text((e["question"] as String)), // Question here,
//                     const SizedBox(height: 5),
//                     Text((e["correct_answer"])
//                         .toString()), // Correct answer here,
//                     Text(
//                         (e["chosen_answer"]).toString()), // Chosen answer here,
//                   ],
//                 ),
//               )
//             ]);
