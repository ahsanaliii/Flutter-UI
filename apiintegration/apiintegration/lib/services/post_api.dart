// import 'dart:convert';

// import 'package:apiintegration/models/employee_model.dart';
// import 'package:http/http.dart' as http;

// class PostApi {
//   postUserData(Datum post) async {
//     final url = Uri.parse("https://reqres.in/api/users");
//     final res = await http.post(
//       url,
//       headers: {
//         "Content-Type": "application/json",
//         "x-api-key": "reqres-free-v1", // ✅ Your custom header
//       },
//       body: jsonEncode({
//         "id": 7,
//         "email": "michael.lawson@reqres.in",
//         "first_name": "Michael",
//         "last_name": "Lawson",
//         "avatar": "https://reqres.in/img/faces/7-image.jpg",
//         "createdAt": "2025-05-22T06:08:08.646Z",
//       }),
//     );
//     if (res.statusCode == 201) {
//       final data = EmployeeData.fromRawJson(res.body);
//       print("data posted successfully  ${data.data}");
//       return data;
//     } else {
//       print("error while posting the data ${res.statusCode}");
//     }
//   }
// }
