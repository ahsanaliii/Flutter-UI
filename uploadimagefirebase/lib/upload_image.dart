import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'button.dart';
import 'package:image_picker/image_picker.dart';

class UplaodImage extends StatefulWidget {
  const UplaodImage({super.key});

  @override
  State<UplaodImage> createState() => _UplaodImageState();
}

class _UplaodImageState extends State<UplaodImage> {
  File? _image;
  String? _base64Image;
  final picker = ImagePicker();
  Future getGalleryImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    List<int> imageBytes = await pickedFile!.readAsBytes();
    String base64String = base64Encode(imageBytes);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _base64Image = base64String;
        print(pickedFile.path);
      } else {
        // print("No image Picked");
      }
    });
  }

  Future<void> _uploadImage() async {
    setState(() async {
      if (_base64Image != null) {
        await FirebaseFirestore.instance
            .collection("MyStudents")
            .doc("ahsan")
            .update({"image": _base64Image});
      }
      return null;
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
        // crossAxisAlignment: CrossAxisAlignment.center,
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
        ],
      ),
    );
  }
}
