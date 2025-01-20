import 'package:flutter/material.dart';

class DividerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Divider Example")),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Above Divider"),
                Divider(
                  color: Colors.black,
                  thickness: 3,
                  indent: 30,
                  endIndent: 30,
                  height: 50,
                ),
                Text("Below Divider"),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.red,
            thickness: 3,
            width: 50,
            indent: 50,
            endIndent: 50,
          ),
          Expanded(
            child: Column(
              children: [
                Text("To the Left of Vertical Divider"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




















// import 'package:flutter/material.dart';

// class TextFieldExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("TextField Example")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Enter your name:"),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: "Name",
//                 hintText: "Enter your full name",
//                 border: OutlineInputBorder(), // Adds a border
//                 prefixIcon: Icon(Icons.person), // Icon at the start
//               ),
//               onChanged: (value) {
//                 print("Name entered: $value");
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }