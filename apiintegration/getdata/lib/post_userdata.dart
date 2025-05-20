// import 'dart:convert';

// import 'package:getdata/userdata_model.dart';
// import 'package:http/http.dart' as http;

// class PostUserdata {
//   Future<User?> postUserData() async {
//     final url = Uri.parse("https://reqres.in/api/users/");
//     final res = await http.post(
//       url,
//       headers: {
//         'x-api-key': 'reqres-free-v1',
//         'Content-Type': 'application/json',
//       },
//       body: json.encode({
//         'firstName': "Ahsan",
//         'lastName': " Ali",
//         'email': "ahsan@gmail.com",
//       }),
//     );
//     if (res.statusCode == 201) {
//       final data = json.decode(res.body);
//       // print(data);

//       return data;
//     } else {
//       print("error in posting data with status code : ${res.statusCode}");
//       return null;
//     }
//   }
// }
