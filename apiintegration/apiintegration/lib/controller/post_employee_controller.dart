import 'dart:convert';

import 'package:apiintegration/models/employee_model.dart';
import 'package:apiintegration/services/post_api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostEmployeeController extends GetxController {
  Rxn<Datum> postdata = Rxn<Datum>();

  final isLoading = false.obs;

  getData(Datum post) async {
    isLoading.value = true;
    final url = Uri.parse("https://reqres.in/api/users");
    final res = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "x-api-key": "reqres-free-v1", // ✅ Your custom header
      },
      body: jsonEncode(post.toJson()),
    );
    if (res.statusCode == 201) {
      postdata.value = Datum.fromJson(jsonDecode(res.body));

      print("user id is ${postdata.value?.id}");
      print("user fname is ${postdata.value?.firstName}");
      print("user lname is ${postdata.value?.lastName}");
      print("user email is ${postdata.value?.email}");
    } else {
      print(
        "error while submittig the data with status code  ${res.statusCode}",
      );
    }
    isLoading.value = false;
  }
}
