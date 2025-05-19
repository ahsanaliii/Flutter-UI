import 'dart:convert';

import 'package:apiintegration/models/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostdataController extends GetxController {
  Rxn<PostModel> postData = Rxn<PostModel>();
  var isPosting = false.obs;

  Future<void> createPost(PostModel post) async {
    isPosting.value = true;
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(post.toJson()),
    );
    if (response.statusCode == 201) {
      postData.value = PostModel.fromJson(jsonDecode(response.body));

      print("User Id: ${postData.value?.id}");
      print("User title: ${postData.value?.title}");
      print("User Body: ${postData.value?.body}");
      print("User UserId: ${postData.value?.userId}");
      print("Data submitted successfully");
    } else {
      print("Not worked error while submitting the data");
    }
    isPosting.value = false;
  }
}
