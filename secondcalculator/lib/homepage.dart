import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:secondcalculator/button.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String userinput = "";
  String answer = "";

  bool islastoperator(String input) {
    if (input.isEmpty) return false;
    String lastoperator = input.substring(input.length - 1);
    return ["+", "-", "*", "/", ".", "%"].contains(lastoperator);
  }

  void equalpress() {
    var finalinput = userinput;
    Parser p = Parser();
    Expression expression = p.parse(finalinput);
    ContextModel contextModel = ContextModel();
    double finalvalue = expression.evaluate(EvaluationType.REAL, contextModel);

    setState(() {
      answer = finalvalue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        alignment: Alignment.center,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              width: mediaQuery.width * 0.7,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  userinput == "" ? "0" : userinput,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),

            SizedBox(
              width: mediaQuery.width * 0.7,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  answer,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                      height: mediaQuery.height * 0.1,
                    ),
                    Buttonwidget(
                      text: "C",
                      textColor: Colors.red,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "";
                          answer = "";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "%",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput%";
                          }
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "DEL",
                      style: TextStyle(
                        fontSize: mediaQuery.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = userinput.substring(
                            0,
                            userinput.length - 1,
                          );
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "/",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput/";
                          }
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.01),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                      height: mediaQuery.height * 0.1,
                    ),

                    Buttonwidget(
                      text: "7",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}7";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "8",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}8";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "9",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}9";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "X",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput*";
                          }
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.01),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                      height: mediaQuery.height * 0.1,
                    ),
                    Buttonwidget(
                      text: "4",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}4";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "5",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}5";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "6",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}6";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "-",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput-";
                          }
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.01),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                      height: mediaQuery.height * 0.1,
                    ),
                    Buttonwidget(
                      text: "1",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}1";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "2",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}2";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "3",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}3";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "+",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput+";
                          }
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.01),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.01,
                      height: mediaQuery.height * 0.1,
                    ),
                    Buttonwidget(
                      text: "H",
                      textColor: Colors.blue,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {},
                    ),
                    Buttonwidget(
                      text: "0",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          userinput = "${userinput}0";
                        });
                      },
                    ),
                    Buttonwidget(
                      text: ".",
                      textColor: Colors.black,
                      backColor: const Color.fromARGB(255, 202, 195, 195),
                      onTap: () {
                        setState(() {
                          if (!islastoperator(userinput)) {
                            userinput = "$userinput.";
                          }
                        });
                      },
                    ),
                    Buttonwidget(
                      text: "=",
                      textColor: Colors.white,
                      backColor: Colors.blue,
                      onTap: () {
                        setState(() {
                          equalpress();
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.01),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
