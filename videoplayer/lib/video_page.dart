import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/video_controller.dart';

class VideoPage extends StatelessWidget {
  VideoPage({super.key});
  final VideoController videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Video Player in Flutter")),
      body: Obx(
        () => Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                videoController.videoPlayerController.value != null
                    ? Column(
                      children: [
                        AspectRatio(
                          aspectRatio:
                              videoController
                                  .videoPlayerController
                                  .value!
                                  .value
                                  .aspectRatio,
                          child: VideoPlayer(
                            videoController.videoPlayerController.value!,
                          ),
                        ),
                      ],
                    )
                    : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 400,
                        width: 400,
                        color: Colors.cyanAccent,
                        child: Center(child: Text("No video Selected..")),
                      ),
                    ),

                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    videoController.pickVideo();
                  },
                  child: Text("Pick Video"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
