import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 77, 175, 175),
        title: const Text("Drawer AppBar"),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 77, 175, 175),
          child: ListView(
            children: const [
              DrawerHeader(
                  // padding: EdgeInsets.zero,
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    // backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        "https://c7.alamy.com/comp/R4AT8R/handsome-mature-business-man-isolated-on-black-background-R4AT8R.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("Files"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Upload"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("Drawer"),
      ),
    );
  }
}
