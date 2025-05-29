import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostImageController extends GetxController {
  final imageFile = Rx<File?>(null);
  final isLoading = false.obs;
  final uploadedUrl = "".obs;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imageFile.value = File(pickedImage.path);
      uploadedUrl.value = "";
    }
  }

  Future<void> uploadImage() async {
    final file = imageFile.value;
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
