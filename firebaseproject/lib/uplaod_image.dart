import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseproject/button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UplaodImage extends StatefulWidget {
  const UplaodImage({super.key});

  @override
  State<UplaodImage> createState() => _UplaodImageState();
}

class _UplaodImageState extends State<UplaodImage> {
  File? _image;
  String? imagePath;
  String? fetchedImagePath;
  final picker = ImagePicker();
  Future getGalleryImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    setState(() {
      print("${pickedFile!.path}  path pickedd...");
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imagePath = pickedFile.path;
      } else {
        print("No image Picked");
      }
    });
  }

  _uploadImage() async {
    DocumentReference documentReference =
        await FirebaseFirestore.instance.collection("UploadImages").doc();

    Map<String, dynamic> students = {"imagePath": imagePath};

    await documentReference.set(students);

    // setState(() {});
  }

  _fetchImage() async {
    FirebaseFirestore.instance.collection("UploadImages").get().then((
      QuerySnapshot querySnapshot,
    ) {
      if (querySnapshot.docs.isNotEmpty) {
        var imageData = querySnapshot.docs.first.data() as Map<String, dynamic>;
        setState(() {
          fetchedImagePath = imageData["imagePath"];
        });
        print("fetched Image $fetchedImagePath");
      } else {
        print("no image found in firebase");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Image..."),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: getGalleryImage,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                height: 200,
                width: 200,
                child:
                    _image != null
                        ? Image.file(_image!.absolute)
                        : Icon(Icons.image),
              ),
            ),
          ),
          SizedBox(height: 30),
          Button(
            onPressed: _uploadImage,
            text: "Upload Image",
            btnColor: Colors.blueAccent,
          ),

          SizedBox(height: 30),
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              height: 200,
              width: 200,
              child:
                  fetchedImagePath != null 
                      ? Image.file(File(fetchedImagePath!))
                      : Text(
                        textAlign: TextAlign.center,
                        "select image from firebase",
                      ),
            ),
          ),
          SizedBox(height: 30),
          Button(
            onPressed: _fetchImage,
            text: "Get Image from Firebase",
            btnColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
