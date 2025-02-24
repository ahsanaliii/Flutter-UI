import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Employeelist extends StatelessWidget {
  const Employeelist({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    List<String> titles = [
      "John Doe",
      "Emma Watson",
      "Michael Smith",
      "Sophia Johnson",
      "David Brown",
      "Olivia Davis",
      "William Wilson",
    ];

    List<String> subTitles = [
      "Online",
      "Online",
      "Online",
      "Last seen 3 minutes ago",
      "Last seen 5 minutes ago",
      "Last seen 7 minutes ago",
      "Last seen 10 minutes ago",
    ];

    List<Map<String, dynamic>> persons = [
      {
        "title": "John Doe",
        "subtitle": "Online",
        "trailing": Icons.circle,
        "avatar": Icons.person,
      },
      {
        "title": "Emma Watson",
        "subtitle": "Online",
        "trailing": Icons.circle,
        "avatar": Icons.person,
      },
      {
        "title": "Michael Smith",
        "subtitle": "Online",
        "trailing": Icons.circle,
        "avatar": Icons.person,
      },
      {
        "title": "Sophia Johnson",
        "subtitle": "Last seen 3 minutes ago",
        // "trailing": Icons.phone,
        "avatar": Icons.person,
      },
      {
        "title": "David Brown",
        "subtitle": "Last seen 5 minutes ago",
        // "trailing": Icons.video_call,
        "avatar": Icons.person,
      },
      {
        "title": "Olivia Davis",
        "subtitle": "Last seen 7 minutes ago",
        // "trailing": Icons.work,
        "avatar": Icons.person,
      },
      {
        "title": "William Wilson",
        "subtitle": "Last seen 10 minutes ago",
        // "trailing": Icons.code,
        "avatar": Icons.person,
      },
    ];

    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                      ),
                    ),
                    SizedBox(width: mediaQuery.width * 0.1),
                    Text(
                      "Management Employees",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: mediaQuery.height,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mediaQuery.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  // hintText: "Enter your name...",
                                  fillColor: const Color.fromARGB(
                                    255,
                                    209,
                                    207,
                                    207,
                                  ),
                                  filled: true,
                                  hintText: "Searching People",
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.search,
                              color: const Color.fromARGB(255, 71, 71, 71),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.05),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: List.generate(persons.length, (index) {
                              return ListTile(
                                leading: Stack(
                                  children: [
                                    CircleAvatar(backgroundColor: Colors.blue),
                                    Positioned(
                                      left: 30,
                                      top: 30,
                                      child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                trailing:
                                    index < 3
                                        ? Icon(
                                          Icons.circle,
                                          color: Colors.green,
                                          size: mediaQuery.height * 0.02,
                                        )
                                        : null,

                                contentPadding: EdgeInsets.all(
                                  mediaQuery.height * 0.005,
                                ),
                                title: Text(
                                  titles[index],
                                  // persons[index]["title"],
                                  style: TextStyle(
                                    fontSize: mediaQuery.width * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Text(
                                //   "Amber Griffin",
                                // style: TextStyle(
                                //   fontSize: mediaQuery.width * 0.04,
                                //   fontWeight: FontWeight.bold,
                                // ),
                                // ),
                                subtitle: Text(
                                  subTitles[index],
                                  style: TextStyle(
                                    fontSize: mediaQuery.width * 0.03,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
