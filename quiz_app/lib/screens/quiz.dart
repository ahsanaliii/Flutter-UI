import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomePage(switchScreen);
  //   super.initState();
  // }

  List<String> selectedAnswers = [];
  var activeScreen = "home-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // using if else condition...

    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelectedAnswer: chooseAnswer);
    }

    if (activeScreen == "result-screen") {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 92, 4, 104),
                Color.fromARGB(255, 131, 12, 179),
                Color.fromARGB(255, 172, 13, 204)
              ],
            ),
          ),

          child: screenWidget,

//## using ternary Operator...

          // child: activeScreen == "home-screen"
          //     ? HomePage(switchScreen)
          //     : const QuestionScreen(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
