import 'package:get/get.dart';
import 'package:getdata/userdata_api.dart';
import 'package:getdata/userdata_model.dart';

class UserdataController extends GetxController {
  RxList<User> users = <User>[].obs;
  RxBool isloading = false.obs;

  void getUserData() async {
    final res = await UserdataApi().fetchData();
    if (res != null) {
      users.value = res.data;
      isloading.value = true;
    }
  }
}
