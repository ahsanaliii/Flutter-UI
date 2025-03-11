import 'package:fetchlist/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserModel>> fetchUserData() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/users"));
    if (response.statusCode == 200) {
      return userModelFromJson(response.body);
    } else {
      throw Exception("Network Error");
    }
  }
}
