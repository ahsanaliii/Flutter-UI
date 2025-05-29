import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getimages/get_image_controller.dart';
import 'package:image_picker/image_picker.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key, this.pickedImage});

  final GetImageController getImageController = Get.put(GetImageController());
  var pickedImage;
  var isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("photo upload")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              // getImageController.getimages();

              final ImagePicker picker = ImagePicker();
              final XFile? image = await picker.pickImage(
                source: ImageSource.gallery,
              );

              if (image != null) {
                pickedImage = image;
                isloading = true;
              }
            },
            child: Text("Upload Images"),
          ),
          isloading
              ? Container(
                height: 200,
                width: 200,
                child: Image.asset(pickedImage),
              )
              : Text("No image picked yet.."),
        ],
      ),
    );
  }
}
