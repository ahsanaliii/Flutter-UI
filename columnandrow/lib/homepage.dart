import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  // List to store random rotation angles for each container
  List<double> rotations = List.generate(12, (_) => 0.0);

  // Function to randomize rotation angles
  void _randomizeRotations() {
    setState(() {
      rotations = List.generate(
          12,
          (_) =>
              _random.nextDouble() *
              pi *
              2); // Random rotation between 0 and 2π
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 219, 27, 161),
          title: const Text("Randomize Rotations"),
        ),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: 450,
                child: Row(
                  children: [
                    for (int col = 0; col < 4; col++)
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (row) {
                            int index = col * 3 + row;
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                width: 80,
                                height: 80,
                                transform: Matrix4.rotationZ(rotations[index]),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Hello World",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _randomizeRotations,
                child: const Text("Randomize Rotations"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 219, 27, 161),
//           title: const Text("AppBar"),
//         ),
//         body: SizedBox(
//           width: 450,
//           child: Row(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedButton(
//                       onPressed: () {},
//                       // style: OutlinedButton.styleFrom(
//                       //     shape: RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.zero)),
//                       child: const Text("Click")),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     width: 80,
//                     height: 80,
//                     transform: Matrix4.rotationZ(0.1),
//                     decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 197, 170, 101),
//                         borderRadius: BorderRadius.circular(15)),

//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(10),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(7),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedButton(
//                       onPressed: () {},
//                       // style: OutlinedButton.styleFrom(
//                       //     shape: RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.zero)),
//                       child: const Text("Click")),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(6),
//                     decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 197, 170, 101),
//                         borderRadius: BorderRadius.circular(15)),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80,
//                     transform: Matrix4.rotationZ(5),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80,
//                     transform: Matrix4.rotationZ(6),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 40,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedButton(
//                       onPressed: () {},
//                       // style: OutlinedButton.styleFrom(
//                       //     shape: RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.zero)),
//                       child: const Text("Click")),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(1),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(2),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(3),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 60,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedButton(
//                       onPressed: () {},
//                       // style: OutlinedButton.styleFrom(
//                       //     shape: RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.zero)),
//                       child: const Text("Click")),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(4),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(5),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 80,
//                     height: 80, transform: Matrix4.rotationZ(7),
//                     // margin: EdgeInsets.all(10),
//                     child: Center(child: Text("Hello World")),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         // body: SizedBox(
//         //   // width: 300,
//         //   // height: 200,
//         //   child: Column(
//         //     // mainAxisAlignment: MainAxisAlignment.center,
//         //     // crossAxisAlignment: CrossAxisAlignment.center,
//         //     children: [
//         //       Container(
//         //         width: 100,
//         //         height: 130,
//         //         decoration: const BoxDecoration(color: Colors.orange),
//         //         alignment: Alignment.topCenter,
//         //         child: const Text(
//         //           "A ",
//         //           style: TextStyle(
//         //             color: Colors.amber,
//         //             backgroundColor: Colors.red,
//         //           ),
//         //         ),
//         //       ),
//         //       TextButton(
//         //           onPressed: () {
//         //             print("button presesed");
//         //           },
//         //           onLongPress: () => print("long pressed/........"),
//         //           // autofocus: true,
//         //           child: Text("TextButton")),
//         //       ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
//         //       OutlinedButton(onPressed: () {}, child: Text("Outlined Button"))
//         //     ],
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
