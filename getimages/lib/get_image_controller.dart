import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetImageController extends GetxController {
  getimages() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    final res = await http.get(url);

    if (res.statusCode == 200) {
      res.body;
      print(res.body);
    } else {
      print("error while fethcing the data");
    }
  }
}
