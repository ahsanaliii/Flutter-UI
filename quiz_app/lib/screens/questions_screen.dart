import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_app/screens/home_screen.dart';
// import 'package:quiz_app/screens/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectedAnswer,
  });
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 238, 204, 238),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            // ...currentQuestion.answers.map(
            //   (answer) {
            //     return AnswerButton(answer, () {});
            //   },

            // Shuffled list Implenting....

            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(answer, () {
                  answerQuestion(answer);
                });
              },
            )
            // AnswerButton(currentQuestion.answers[0], () {}),
            // AnswerButton(),
            // ElevatedButton(onPressed: () {}, child: const Text("Answer3")),
          ],
        ),
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