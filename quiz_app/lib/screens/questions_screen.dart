import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
// import 'package:quiz_app/screens/home_screen.dart';
// import 'package:quiz_app/screens/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            " Questions",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton("answer 1", () {}),
          AnswerButton("answer 2", () {}),
          AnswerButton("answer 3", () {}),
          // AnswerButton(),
          // AnswerButton(),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer2")),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer3")),
        ],
      ),
    );
  }
}




 // TextButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => HomePage(() => Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => QuestionScreen()))),
          //         ));
          //   },
          //   child: const Text(
          //     "Go to HomePage",
          //     style: TextStyle(color: Colors.white),
          //   ),
          // )