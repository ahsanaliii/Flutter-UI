import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz.dart';

void main() {
  runApp(const Quiz());
}





// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: Homepage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [Colors.blue, Colors.purple, Colors.red],
//           ),
//         ),
//         child: Center(
//           child: Image.asset(
//             'assets/images/quiz-logo.png',
//             width: 200,
//           ),
//         ),
//       ),
//     );
//   }
// }
