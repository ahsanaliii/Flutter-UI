import 'dart:convert';

import 'package:get/get.dart';
import 'package:getdata/userdata_model.dart';
import 'package:http/http.dart' as http;

class PostUserdataController extends GetxController {
  Rxn<User> postUserData = Rxn<User>();
  RxBool isloading = true.obs;

  Future<User?> postData() async {
    final url = Uri.parse("https://reqres.in/api/users/");
    final res = await http.post(
      url,
      headers: {
        'x-api-key': 'reqres-free-v1',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'firstName': "Ahsan",
        'lastName': " Ali",
        'email': "ahsan@gmail.com",
      }),
    );
    if (res.statusCode == 201) {
      postUserData.value = json.decode(res.body);
      print("User Id: ${postUserData.value?.id}");
      print("User title: ${postUserData.value?.firstName}");
      print("User Body: ${postUserData.value?.lastName}");
      print("User UserId: ${postUserData.value?.email}");
      print("Data submitted successfully");
    } else {
      print("error in posting data with status code : ${res.statusCode}");
      return null;
    }
  }
}

// import 'package:get/get.dart';
// import 'package:getdata/post_userdata.dart';
// import 'package:getdata/userdata_model.dart';

// class PostUserdataController extends GetxController {
//   Rxn<User> postUserData = Rxn<User>();
//   RxBool isloading = true.obs;

//   void postData(User post) async {
//     final response = PostUserdata().postUserData();
//     postUserData.value = await response;
//     print("First name is ${postUserData.value?.firstName}");
//     print("First name is ${postUserData.value?.lastName}");
//     print("First name is ${postUserData.value?.email}");
//     isloading.value = false;
//   }
// }
