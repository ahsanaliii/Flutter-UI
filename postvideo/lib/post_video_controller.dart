import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class PostVideoController extends GetxController {
  final videoFile = Rx<File?>(null);
  final isLoading = false.obs;
  final uploadedUrl = "".obs;
  final videoPlayerController = Rx<VideoPlayerController?>(null);

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedVideo = await picker.pickVideo(source: ImageSource.gallery);
    if (pickedVideo != null) {
      final file = File(pickedVideo.path);
      videoFile.value = file;
      uploadedUrl.value = "";

      // initialize and play videoo

      final controller = VideoPlayerController.file(file);
      await controller.initialize();
      controller.setLooping(true);
      controller.play();
      VideoProgressIndicator(allowScrubbing: true, controller);
      videoPlayerController.value = controller;
      update();
    }
  }

  Future<void> uploadImage() async {
    final file = videoFile.value;
    if (file == null) return;
    isLoading.value = true;
    uploadedUrl.value = "";

    //  Using CatBOX API

    final uri = Uri.parse("https://catbox.moe/user/api.php");
    final request = http.MultipartRequest("POST", uri);

    request.headers['User-Agent'] = 'FlutterApp/1.0';
    request.fields["reqtype"] = "fileupload";
    request.files.add(
      await http.MultipartFile.fromPath("fileToUpload", file.path),
    );

    try {
      final response = await request.send();
      final result = await http.Response.fromStream(response);
      if (response.statusCode == 200) {
        final fileUrl = result.body.trim();
        uploadedUrl.value = fileUrl;
        print("Uploaded to Catbox: $fileUrl");
      }
    } catch (e) {
      print("Upload Url error ${e}");
    } finally {
      isLoading.value = false;
    }
  }
}
