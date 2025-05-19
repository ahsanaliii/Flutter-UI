import 'package:http/http.dart' as http;
import 'package:postdata/get_advice_model.dart';

class GetAdviceService {
  Future<GetAdvice?> getAdvice() async {
    final url = Uri.parse("https://api.adviceslip.com/advice");
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final data = GetAdvice.fromRawJson(res.body);
      print(data);
      return data;
    } else {
      print("erro in data fetching...");
      return null;
    }
  }
}
