import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postvide/post_video_controller.dart';
import 'package:video_player/video_player.dart';

class PostVideoPage extends StatefulWidget {
  const PostVideoPage({super.key});

  @override
  State<PostVideoPage> createState() => _PostVideoPageState();
}

class _PostVideoPageState extends State<PostVideoPage> {
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
                    ? Column(
                      children: [
                        AspectRatio(
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
                        VideoProgressIndicator(
                          postVideoController.videoPlayerController.value!,
                          allowScrubbing: true,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: postVideoController.seekBackward,
                              icon: Icon(Icons.arrow_back),
                            ),
                            IconButton(
                              onPressed: postVideoController.togglePlayPause,
                              icon: Icon(
                                postVideoController.isPlaying.value
                                    ? Icons.play_arrow
                                    : Icons.pause,
                              ),
                            ),
                            IconButton(
                              onPressed: postVideoController.seekForward,
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final controller = postVideoController.videoPlayerController.value;

            if (controller != null) {
              if (controller.value.isPlaying) {
                controller.pause();
                postVideoController.isPlaying.value = true;
              } else {
                controller.play();
                postVideoController.isPlaying.value = false;
              }
            }
          });
        },
        child: Icon(
          postVideoController.isPlaying.value ? Icons.play_arrow : Icons.pause,
        ),
      ),
    );
  }
}
