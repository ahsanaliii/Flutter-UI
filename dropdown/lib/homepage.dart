import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController textController = TextEditingController();
  bool checkvalue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("AppBar"),
              backgroundColor: Colors.grey,
            ),
            // ignore: prefer_const_constructors
            body: Stack(
              children: [
                // Background
                Container(width: 200, height: 200, color: Colors.blue),

                // Positioned widgets
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text("Top Left", style: TextStyle(color: Colors.red)),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text("Bottom Right",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                ),
              ],
            )
            // Column(
            //   children: [
            //     Center(
            //       child: Checkbox(
            //         // fillColor: Color(Colors.red),
            //         value: checkvalue,
            //         activeColor: Colors.orange,
            //         onChanged: (newvalue) {
            //           setState(() {
            //             checkvalue = newvalue!;
            //           });
            //         },
            //       ),
            //     ),
            //     Text(checkvalue ? "Checked" : "Not Checked")
            //   ],
            // )
            // // Column(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: TextField(
            //         decoration: InputDecoration(
            //           labelText: "Enter Your Name",
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(15)),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: TextField(
            //         controller: textController,
            //         decoration: InputDecoration(
            //           prefixIcon: Icon(Icons.mail),
            //           suffixIcon: Icon(Icons.clear),
            //           labelText: "Enter Your Name",
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(15)),
            //         ),
            //       ),
            //     ),
            //     OutlinedButton(
            //         onPressed: () {
            //           var stringtext = textController.text;
            //           print(stringtext);
            //         },
            //         child: const Text("Print Text"))
            //   ],
            // )
            // Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         child: Text("1"),
            //         width: 500,
            //         // height: 100,
            //         color: Colors.amber,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         child: Text("1"),
            //         width: 400,
            //         // height: 200,
            //         color: Colors.red,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         child: Text("1"),
            //         width: 200,
            //         // height: 200,
            //         color: Colors.blue,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         child: Text("1"),
            //         width: 100,
            //         // height: 200,
            //         color: Colors.orange,
            //       ),
            //     ),
            //   ],
            // )

            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: GridView.builder(
            //         itemCount: 9,
            //         // ignore: prefer_const_constructors
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 3,
            //             crossAxisSpacing: 8,
            //             mainAxisSpacing: 8,
            //             childAspectRatio: 1),
            //         itemBuilder: (context, index) {
            //           return Container(
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(12),
            //                 color: Colors.blue.withOpacity(0.5)),
            //           );
            //         }),
            //   ),

            //   // child: Image.network(
            //   //   "https://images.pexels.com/photos/30337813/pexels-photo-30337813/free-photo-of-portrait-of-woman-with-afro-hairstyle-against-wooden-door.jpeg",
            //   //   width: 100,
            //   //   height: 100,
            //   // ),
            // ),

            ));
  }
}
