import 'package:flutter/material.dart';

class Expendedwidget extends StatelessWidget {
  const Expendedwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar here."),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          child: Expanded(
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.green,
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        // height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // alignment: Alignment.center,
          // child: Text("I AM IN THE CENTER OF BODY..."),
        ),
      ),
    );
  }
}









// class ExpandedRowExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(title: Text('Expanded in Row Example')),
//         body: Row(
//           children: [
//             Expanded(
//               flex: 2, // Takes 2 parts of the space
//               child: Container(
//                 color: Colors.red,
//                 child: Center(child: Text('Flex 2')),
//               ),
//             ),
//             Expanded(
//               flex: 1, // Takes 1 part of the space
//               child: Container(
//                 color: Colors.green,
//                 child: Center(child: Text('Flex 1')),
//               ),
//             ),
//             Expanded(
//               flex: 3, // Takes 3 parts of the space
//               child: Container(
//                 color: Colors.blue,
//                 child: Center(child: Text('Flex 3')),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






