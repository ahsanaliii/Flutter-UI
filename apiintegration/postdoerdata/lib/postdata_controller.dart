import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostdataController extends GetxController {
  Rxn<Map> message = Rxn<Map>();

  postdata() async {
    try {
      final url = Uri.parse("https://www.talhaproject.com/signup/doer/");
      final res = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
          "User-Agent": "PostmanRuntime/7.44.0",
          "Accept": "*/*",
          "Accept-Encoding": "gzip, deflate, br",
          "Connection": "keep-alive",
        },
        body: jsonEncode({
          "full_name": "talha gulzar iub",
          "phone_number": "03232312332",
          "email": "talhanazir78fr876fr677@gmail.com",
          "password": "Password123@",
          "city": "13",
        }),
      );

      if (res.statusCode == 201) {
        res.body;
        print(res.body);
      } else {
        print("unable to post data... ${res.statusCode}");
      }
    } catch (e) {
      print("unalble to post data int the api ${e}");
    }
  }
}
