import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PutDataController extends GetxController {
  putData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    final res = await http.put(
      url,
      headers: {'content-type': 'application/json'},
      body: jsonEncode({
        'id': 1,
        'user-id': 10,
        'title': "Ahsan Ali dev",
        'body': "lorem ipsum trum",
      }),
    );
    if (res.statusCode == 200) {
      res.body;
      print(res.body);
    } else {
      print("erro while putting data");
    }
  }
}
