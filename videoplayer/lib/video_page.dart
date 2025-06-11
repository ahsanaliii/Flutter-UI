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
                    ? Stack(
                      children: [
                        AspectRatio(
                          aspectRatio:
                              videoController
                                  .videoPlayerController
                                  .value!
                                  .value
                                  .aspectRatio,
                          child: GestureDetector(
                            onTap: () {
                              videoController.showController.value =
                                  !videoController.showController.value;
                            },
                            onLongPress: () {
                              videoController.videoPlayerController.value!
                                  .setPlaybackSpeed(2.0);
                              videoController.showController.value = true;
                            },
                            onLongPressUp: () {
                              videoController.videoPlayerController.value!
                                  .setPlaybackSpeed(1.0);
                              videoController.showController.value = false;
                            },
                            child: VideoPlayer(
                              videoController.videoPlayerController.value!,
                            ),
                          ),
                        ),
                        if (videoController.showController.value)
                          Positioned(
                            // top: 8,
                            bottom: 50,
                            left: 0,
                            right: 0,
                            child: SizedBox(
                              height: 10,
                              child: VideoProgressIndicator(
                                colors: VideoProgressColors(
                                  backgroundColor: Colors.grey,
                                  playedColor: Colors.red,
                                ),

                                videoController.videoPlayerController.value!,
                                allowScrubbing: true,
                              ),
                            ),
                          ),

                        if (videoController.showController.value)
                          Positioned(
                            bottom: 0,
                            left: 40,
                            right: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: videoController.seekBackward,
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: videoController.togglePlayPause,

                                  icon: Icon(
                                    videoController.isPlaying.value
                                        ? Icons.play_arrow
                                        : Icons.pause,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: videoController.seekForward,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (videoController.showController.value)
                          Positioned(
                            top: 20,
                            bottom: 20,
                            left: 10,
                            right: 10,
                            child: GestureDetector(
                              onTap: videoController.togglePlayPause,

                              child: Icon(
                                videoController.isPlaying.value
                                    ? Icons.play_arrow
                                    : Icons.pause,
                                color: Colors.white,
                                size: 60,
                              ),
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
