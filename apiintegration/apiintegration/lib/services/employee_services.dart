import 'dart:convert';

import 'package:apiintegration/models/employee_model.dart';
import 'package:http/http.dart' as http;

class EmployeeServices {
  final baseUrl = "https://reqres.in/api/";

  getData() async {
    try {
      final res = await http.get(
        Uri.parse("${baseUrl}users?page=2"),
        headers: {
          "Content-Type": "application/json",
          "x-api-key": "reqres-free-v1", // ✅ Your custom header
        },
      );
      if (res.statusCode == 200) {
        final data = EmployeeData.fromRawJson(res.body);
        final employee = data.data;
        print(employee);
        return employee;
        // final decodeData = jsonDecode(res.body);
        // print(decodeData);
      }
    } catch (e) {
      print("error while fetching the data..");
    }
  }
}
