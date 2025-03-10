import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/signupscreen.dart';
import 'package:funfit/views/widgets/button.dart';
import 'package:funfit/views/widgets/weight_inputfield.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  int selectedindex = 0;
  late bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 224, 220, 220),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(Icons.arrow_back, size: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: mediaQuery.height * 0.03),
                  Text(
                    "What's Your Weight?",
                    style: TextStyle(
                      fontSize: mediaQuery.height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff1732A4)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = selectedindex == 1;
                                  // selectedindex = 0;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: mediaQuery.height,
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? Colors.white
                                          : Color(0xff1732A4),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  // btnlist[0],
                                  "kg",
                                  style: TextStyle(
                                    color:
                                        isSelected
                                            ? Colors.black
                                            : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = selectedindex == 0;
                                  // selectedindex = 1;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,

                                height: mediaQuery.height,
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? Color(0xff1732A4)
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  // btnlist[1],
                                  "lbs",
                                  style: TextStyle(
                                    color:
                                        isSelected
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.05),
                  isSelected
                      ? Container(
                        height: mediaQuery.height * 0.08,
                        width: mediaQuery.width * 0.35,
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          child: Row(
                            children: [
                              WeightInputfield(maxlength: 3),

                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "lbs",

                                  // style: TextStyle(fontSize: mediaQuery.height * 0.02),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      : Container(
                        height: mediaQuery.height * 0.08,
                        width: mediaQuery.width * 0.35,
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 6,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              WeightInputfield(maxlength: 3),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "kg",
                                  // style: TextStyle(fontSize: mediaQuery.height * 0.02),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  SizedBox(height: mediaQuery.height * 0.05),
                  Buttonwidget(
                    text: "Next",
                    btnwidth: mediaQuery.width * 0.4,
                    ontapped: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signupscreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
