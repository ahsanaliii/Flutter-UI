import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  final videoFile = Rx<File?>(null);
  final videoPlayerController = Rx<VideoPlayerController?>(null);
  final isPlaying = false.obs;
  final showController = true.obs;
  Timer? hideTimer;

  Future<void> startHideTimer() async {
    hideTimer?.cancel();
    hideTimer = Timer(Duration(seconds: 2), () {
      showController.value = false;
    });
  }

  Future<void> resetHideTimer() async {
    showController.value = true;
    startHideTimer();
  }

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
      startHideTimer();
      update();
    }
    resetHideTimer();
  }

  void togglePlayPause() {
    final controller = videoPlayerController.value;
    if (controller != null) {
      if (controller.value.isPlaying) {
        controller.pause();
        showController.value = true;
        isPlaying.value = true;
      } else {
        controller.play();
        isPlaying.value = false;
      }
    }
    resetHideTimer();
  }

  void seekForward() {
    final controller = videoPlayerController.value;
    if (controller != null && controller.value.isInitialized) {
      final currentPosition = controller.value.position;
      final target = currentPosition + Duration(seconds: 1);
      controller.seekTo(target);
    }
    resetHideTimer();
  }

  void seekBackward() {
    final controller = videoPlayerController.value;
    if (controller != null && controller.value.isInitialized) {
      final currentPosition = controller.value.position;
      final target = currentPosition - Duration(seconds: 1);
      controller.seekTo(target > Duration.zero ? target : Duration.zero);
    }
    resetHideTimer();
  }
}
