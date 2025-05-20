import 'package:getdata/userdata_model.dart';
import 'package:http/http.dart' as http;

class UserdataApi {
  Future<Userdata?> fetchData() async {
    final url = Uri.parse("https://reqres.in/api/users/");
    final res = await http.get(
      url,
      headers: {
        'x-api-key': 'reqres-free-v1', // ✅ Required API key header
        'Accept': 'application/json',
      },
    );
    if (res.statusCode == 200) {
      final data = Userdata.fromRawJson(res.body);
      print(data.data);
      return data;
    } else {
      print("error in fetching data.. ${res.statusCode} ...${res.body}");
      return null;
    }
  }
}
