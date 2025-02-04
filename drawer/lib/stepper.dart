import 'package:flutter/material.dart';

class Stepperwidget extends StatefulWidget {
  const Stepperwidget({super.key});

  @override
  State<Stepperwidget> createState() => _StepperwidgetState();
}

class _StepperwidgetState extends State<Stepperwidget> {
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Container(
        child: Center(
          child: Stepper(
            currentStep: _currentstep,
            onStepContinue: () {
              if (_currentstep < 2) {
                setState(() {
                  _currentstep++;
                });
              }
            },
            onStepCancel: () {
              if (_currentstep > 0) {
                setState(() {
                  _currentstep--;
                });
              }
            },
            steps: [
              Step(
                  title: Text("Step 1"),
                  content: Text("This is step 1."),
                  isActive: _currentstep >= 0),
              Step(
                  title: Text("Step 2"),
                  content: Text("This is step 2."),
                  isActive: _currentstep >= 1),
              Step(
                  title: Text("Step 3"),
                  content: Text("This is step 3."),
                  isActive: _currentstep >= 2),
                  
            ],
          ),
        ),
      ),
    );
  }
}
