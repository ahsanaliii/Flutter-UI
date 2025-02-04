import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  void decrement() {
    if (counter == 0) {
      setState(() {
        // counter = 0;
      });
    } else {
      setState(() {
        counter--;
      });
    }
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: increment,
              child: const Text("increment"),
            ),
            // SizedBox(
            //   width: 20,
            // ),
            Text("Count : $counter"),
            OutlinedButton(
              onPressed: decrement,
              child: const Text("decrement"),
            ),
            OutlinedButton(onPressed: reset, child: const Text("Reset"))
          ],
        ),
      ),
    );
  }
}
