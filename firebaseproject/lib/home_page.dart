import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseproject/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? studentName;
  String? studentId;
  String? studentProgramId;
  double? studentGpa;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _programController = TextEditingController();
  final TextEditingController _gpaController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  getStudentName(name) {
    studentName = name;
  }

  getStudentId(id) {
    studentId = id;
  }

  getStudentProgramId(programId) {
    studentProgramId = programId;
  }

  getStudentGpa(gpa) {
    studentGpa = double.parse(gpa);
  }

  createData() async {
    if (formkey.currentState!.validate()) {}
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("MyStudents")
        .doc(studentName);

    Map<String, dynamic> students = {
      "studentName": studentName,
      "studentId": studentId,
      "studentProgramId": studentProgramId,
      "studentGpa": studentGpa,
    };

    if (_nameController.text.isEmpty ||
        _idController.text.isEmpty ||
        _gpaController.text.isEmpty ||
        _programController.text.isEmpty) {
      // return print("pleasee fill all input fields..");
    } else {
      await documentReference.set(students);
    }
    setState(() {
      // studentName = "";
      // studentId = "";
      // studentProgramId = "";
      // studentGpa = 0.0;
      _nameController.clear();
      _idController.clear();
      _programController.clear();
      _gpaController.clear();
    });

    // documentReference.set(students).whenComplete(() {
    //   print(studentName);
    // });
  }

  readData() async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("MyStudents")
        .doc(studentName);

    await documentReference.get().then((dataSnapshot) {});
  }

  updateData() async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("MyStudents")
        .doc(studentName);

    Map<String, dynamic> students = {
      "studentName": studentName,   
      "studentId": studentId,
      "studentProgramId": studentProgramId,
      "studentGpa": studentGpa,
    };

    await documentReference.update(students);
    setState(() {
      // studentName = "";
      // studentId = "";
      // studentProgramId = "";
      // studentGpa = 0.0;
      _nameController.clear();
      _idController.clear();
      _programController.clear();
      _gpaController.clear();
    });
  }

  deleteData() async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("MyStudents")
        .doc(studentName);

    setState(() {
      // studentName = "";
      // studentId = "";
      // studentProgramId = "";
      // studentGpa = 0.0;
      _nameController.clear();
      _idController.clear();
      _programController.clear();
      _gpaController.clear();
    });
    await documentReference.delete();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("My Flutter Crud App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Username..";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text("Name"),
                      isDense: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    onChanged: (String name) {
                      getStudentName(name);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a StudentID..";
                      }
                      return null;
                    },
                    controller: _idController,
                    decoration: InputDecoration(
                      label: Text("Student ID"),
                      isDense: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    onChanged: (String studentId) {
                      getStudentId(studentId);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Student Program ID..";
                      }
                      return null;
                    },
                    controller: _programController,
                    decoration: InputDecoration(
                      label: Text("Study Programm ID"),
                      isDense: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    onChanged: (String programId) {
                      getStudentProgramId(programId);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter GPA..";
                      }
                      return null;
                    },
                    controller: _gpaController,
                    decoration: InputDecoration(
                      label: Text("GPA"),
                      isDense: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    onChanged: (String gpa) {
                      getStudentGpa(gpa);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      onPressed: () {
                        createData();
                      },
                      text: "Create",
                      btnColor: Colors.green,
                    ),
                    Button(
                      onPressed: () {
                        readData();
                      },
                      text: "Read",
                      btnColor: Colors.blue,
                    ),
                    Button(
                      onPressed: () {
                        updateData();
                      },
                      text: "Update",
                      btnColor: Colors.orange,
                    ),
                    Button(
                      onPressed: () {
                        deleteData();
                      },
                      text: "Delete",
                      btnColor: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  width: mediaQuery.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text("Name")),
                      Expanded(child: Text("StudentID")),
                      Expanded(child: Text("ProgramID")),
                      Expanded(child: Text("GPA")),
                    ],
                  ),
                ),

                Expanded(
                  child: StreamBuilder(
                    stream:
                        FirebaseFirestore.instance
                            .collection("MyStudents")
                            .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        // return
                        return Center(child: Text("No Data Available"));
                      } else if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data?.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot documentSnapshot =
                                snapshot.data!.docs[index];
                            // if (snapshot.data?.docs.length == 0) {
                            //   return Center(
                            //     child: Text("No Data available in Database.."),
                            //   );
                            // }
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  studentName =
                                      documentSnapshot["studentName"] ?? "";
                                  _nameController.text =
                                      documentSnapshot["studentName"] ?? "";
                                  _idController.text =
                                      documentSnapshot["studentId"] ?? "";
                                  _programController.text =
                                      documentSnapshot["studentProgramId"] ??
                                      "";
                                  _gpaController.text =
                                      documentSnapshot[("studentGpa")]
                                          .toString();
                                });
                              },

                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          documentSnapshot["studentName"],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          documentSnapshot["studentId"],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          documentSnapshot["studentProgramId"],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          documentSnapshot["studentGpa"]
                                              .toString(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
