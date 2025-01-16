import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  Listview({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("ListView AppBar"),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/fb.jpg"),
            ),
            title: Text(
              "Ahsan Ali",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Text("4d"),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.circle,
                  size: 4,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.group,
                  size: 18,
                )
              ],
            ),
            trailing: SizedBox(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.more_horiz),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.close)
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}
