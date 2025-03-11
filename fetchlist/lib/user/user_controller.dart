import 'package:fetchlist/model/user_model.dart';
import 'package:fetchlist/service/api_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var userlist = <UserModel>[].obs;
  var isLoading = true.obs;

  fetctUsers() async {
    try {
      // isLoading(true);
      var userData = await ApiService().fetchUserData();
      userlist.addAll(userData);
      // print(userData);
    } catch (e) {
      print("error fetching user data");
    } finally {
      isLoading(false);
    }
  }
}
