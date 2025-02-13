import 'package:calculator/screens/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInput = '';
  String answer = '';

  bool isLastOperator(String input) {
    if (input.isEmpty) return false;

    String lastopertor = input.substring(input.length - 1);
    return ['+', '-', '*', '/', '.', '%'].contains(lastopertor);
  }

  void equallPress() {
    var finalinput = userInput.replaceAll("X", "*");
    Parser p = Parser();
    Expression expression = p.parse(finalinput);
    ContextModel contextModel = ContextModel();

    double finalValue = expression.evaluate(EvaluationType.REAL, contextModel);

    setState(() {
      answer = finalValue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 30,
                width: 450,
                alignment: Alignment.centerRight,
                child: Text(
                  userInput == '' ? "0" : userInput,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 30,
                width: 450,
                alignment: Alignment.centerRight,
                child: Text(
                  answer,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // color: Colors.red,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          text: "AC",
                          ontap: () {
                            setState(() {
                              answer = "";
                              userInput = "";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "%",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "${userInput}%";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "Del",
                          ontap: () {
                            setState(() {
                              userInput =
                                  "${userInput.substring(0, userInput.length - 1)}";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "/",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "$userInput/";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          text: "7",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}7";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "8",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}8";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "9",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}9";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "X",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "${userInput}*";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          text: "4",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}4";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "5",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}5";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "6",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}6";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "-",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "${userInput}-";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          text: "1",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}1";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "2",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}2";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "3",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}3";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "+",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "${userInput}+";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          text: "H",
                          ontap: () {
                            print("object");
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "0",
                          ontap: () {
                            setState(() {
                              userInput = "${userInput}0";
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: ".",
                          ontap: () {
                            setState(() {
                              if (!isLastOperator(userInput)) {
                                userInput = "${userInput}.";
                              }
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                      const SizedBox(
                        width: 50,
                      ),
                      ButtonWidget(
                          text: "=",
                          ontap: () {
                            setState(() {
                              equallPress();
                            });
                          },
                          textColor: Colors.red,
                          buttonColor: Colors.green,
                          styColor: Colors.white),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
