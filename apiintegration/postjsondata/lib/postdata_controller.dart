import 'dart:convert';

import 'package:get/get.dart';
import 'package:postjsondata/postdata_model.dart';
import 'package:http/http.dart' as http;

class PostdataController extends GetxController {
  Rxn<PostData> postdat = Rxn<PostData>();
  RxBool isloading = false.obs;

  Future<void> postData(PostData post) async {
    isloading.value = true;
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final res = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(post.toJson()),
    );
    if (res.statusCode == 201) {
      postdat.value = PostData.fromJson(json.decode(res.body));
      print("user id is ${postdat.value?.userId}");
      print("user title is ${postdat.value?.title}");
      print("user body is ${postdat.value?.body}");
      print("Data submitted successfully");
      // print(data);
    } else {
      print("error in posting data ${res.statusCode}");
    }
    // isloading.value = false;
  }
}
