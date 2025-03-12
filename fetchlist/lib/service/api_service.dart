import 'package:fetchlist/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<UserModel> fetchUserData() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/posts"));
    if (response.statusCode == 200) {
      // print(response.body);
      return userModelFromJson(response.body);
    } else {
      // print("error occured");

      throw Exception("Network Error");
    }
  }
}
