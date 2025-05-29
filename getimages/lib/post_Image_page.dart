import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getimages/post_image_controller.dart';

class PostImagePage extends StatelessWidget {
  PostImagePage({super.key});
  final PostImageController postImageController = Get.put(
    PostImageController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Image to CatBox.moe")),
      body: Obx(
        () => Center(
          child: Column(
            children: [
              postImageController.imageFile.value != null
                  ? SizedBox(
                    height: 400,
                    width: 400,
                    child: Image.file(postImageController.imageFile.value!),
                  )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Container(
                      height: 400,
                      width: 400,
                      color: Colors.cyanAccent,
                      child: Center(child: Text("No image Selected")),
                    ),
                  ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  postImageController.pickImage();
                },
                child: Text("Pick Image"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  postImageController.uploadImage();
                },
                child:
                    postImageController.isLoading.value
                        ? CircularProgressIndicator()
                        : Text("Upload Images"),
              ),
              SizedBox(height: 10),
              if (postImageController.uploadedUrl.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Image Url :"),
                    SelectableText(
                      postImageController.uploadedUrl.value,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
