import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  var arrNames = ["ahsan", "ali", "ahmad", "umair", "hamza", "umar"];
  var numbers = [11, 22, 33, 44, 55, 66];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            // return ListTile(
            return ListTile(
              leading: CircleAvatar(
                radius: 25, // Adjust size as needed
                backgroundImage: AssetImage(
                    "assets/images/dice-${index + 1}.png"), // Add image
                backgroundColor: Colors.blueAccent,
              ),
              title: Text(arrNames[index]),
              subtitle: Text("${numbers[index]}"),
              trailing: const Icon(Icons.add),
            );
            //   leading: Image.asset("assets/images/dice-1.png"),
            //   title: Text(arrNames[index]),
            //   subtitle: Text("${numbers[index]}"),
            //   trailing: Icon(Icons.add),
            // );

            // Text(
            //   arrNames[index],
            //   style: const TextStyle(fontSize: 21),
            // );
          },
          itemCount: arrNames.length,
          itemExtent: 100,
        ),
      ),
    );
  }
}
