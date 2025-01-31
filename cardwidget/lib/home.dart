// import 'package:flutter/material.dart';

// class CardExample extends StatelessWidget {
//   const CardExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Flutter Card Example")),
//       body: Center(
//         child: Card(
//           color: Colors.blue[100], // Background color
//           elevation: 8, // Shadow depth
//           shadowColor: Colors.grey, // Shadow color
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15), // Rounded corners
//           ),
//           margin: const EdgeInsets.all(16), // Margin around card
//           clipBehavior: Clip.antiAlias, // Clipping behavior
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const ListTile(
//                 leading: Icon(Icons.account_circle, size: 50),
//                 title: Text("John Doe",
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//                 subtitle: Text("Flutter Developer"),
//               ),
//               OverflowBar(
//                 children: [
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("VIEW PROFILE"),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("MESSAGE"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: const Center(
        child: Card(
          elevation: 12,
          clipBehavior: Clip.antiAlias,
          // shape: OvalBorder(),
          shadowColor: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Hello World"),
          ),
        ),
      ),
    );
  }
}
