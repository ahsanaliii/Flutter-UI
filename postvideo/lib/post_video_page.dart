import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postvide/post_video_controller.dart';
import 'package:video_player/video_player.dart';

class PostVideoPage extends StatelessWidget {
  PostVideoPage({super.key});
  final PostVideoController postVideoController = Get.put(
    PostVideoController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Image to CatBox.moe")),
      body: Obx(
        () => Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                postVideoController.videoPlayerController.value != null &&
                        postVideoController
                            .videoPlayerController
                            .value!
                            .value
                            .isInitialized
                    ? SizedBox(
                      height: 300,
                      width: 300,
                      child: AspectRatio(
                        aspectRatio:
                            postVideoController
                                .videoPlayerController
                                .value!
                                .value
                                .aspectRatio,
                        child: VideoPlayer(
                          postVideoController.videoPlayerController.value!,
                        ),
                      ),
                    )
                    : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        height: 400,
                        width: 400,
                        color: Colors.cyanAccent,
                        child: Center(child: Text("No Video Selected")),
                      ),
                    ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    postVideoController.pickImage();
                  },
                  child: Text("Pick Video"),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      postVideoController.isLoading.value
                          ? null
                          : postVideoController.uploadImage,
                  child:
                      postVideoController.isLoading.value
                          ? CircularProgressIndicator()
                          : Text("Upload Video"),
                ),
                SizedBox(height: 10),
                if (postVideoController.uploadedUrl.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Image Url :"),
                      SelectableText(
                        postVideoController.uploadedUrl.value,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
