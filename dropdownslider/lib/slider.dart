import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double initialValue = 0.0;

  // List of Colors for Container & Thumb
  final List<Color> colorsList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Slider Color Change")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color:
                  colorsList[initialValue.toInt()], // Change color dynamically
            ),
            Slider(
              activeColor: Colors.blue,
              thumbColor: colorsList[
                  initialValue.toInt()], // Change thumb color dynamically
              divisions:
                  colorsList.length - 1, // Number of divisions = List length
              min: 0,
              max: (colorsList.length - 1)
                  .toDouble(), // Maximum value = List length - 1
              value: initialValue,
              onChanged: (value) {
                setState(() {
                  initialValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}



























// import 'package:flutter/material.dart';

// class Sliderwidget extends StatefulWidget {
//   const Sliderwidget({super.key});

//   @override
//   State<Sliderwidget> createState() => _SliderwidgetState();
// }

// class _SliderwidgetState extends State<Sliderwidget> {
//   double initialValue = 0.3;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         title: Text("Slider"),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.red.withOpacity(initialValue),
//           ),
//           Center(
//             child: Slider(
//               activeColor: Colors.blue,
//               // inactiveColor: Colors.orange,
//               thumbColor: Colors.red.withOpacity(initialValue),
//               divisions: 5,
//               value: initialValue,
//               onChanged: (value) {
//                 setState(() {
//                   initialValue = value;
//                 });
//               },
//               // min: 1,
//               // max: 10,
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
