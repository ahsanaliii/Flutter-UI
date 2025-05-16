import 'package:apiintegration/models/userdata_model.dart';
import 'package:http/http.dart' as http;

class UserdataService {
  Future<UserData?> getPost() async {
    var client = http.Client();
    var url = Uri.parse("https://dummyjson.com/products");
    var response = await client.get(url);
    if (response.statusCode == 200) {
      // print("fetched data is= ${response.body}");

      var data = userDataFromJson(response.body);
      // print(data.products[0].category);

      return data;
    } else {
      // print("failed to load data");
      return null;
    }
  }
}
