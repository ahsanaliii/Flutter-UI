import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  final videoFile = Rx<File?>(null);
  final videoPlayerController = Rx<VideoPlayerController?>(null);
  final isPlaying = false.obs;

  Future<void> pickVideo() async {
    final picker = ImagePicker();
    final pickedVideo = await picker.pickVideo(source: ImageSource.gallery);
    if (pickedVideo != null) {
      final file = File(pickedVideo.path);
      videoFile.value = file;
      await initializeVideo();
    }
  }

  Future<void> initializeVideo() async {
    final file = videoFile.value;
    if (file != null) {
      final controller = VideoPlayerController.file(file);
      await controller.initialize();
      controller.play();
      videoPlayerController.value = controller;
      update();
    }
  }
}
