import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PatchDataController extends GetxController {
  patchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    final res = await http.patch(
      url,
      headers: {"content-type": "application/json"},
      body: jsonEncode({'email': "Ahsan@gmail.com"}),
    );

    if (res.statusCode == 200) {
      res.body;
      print(res.body);
    }
  }
}
