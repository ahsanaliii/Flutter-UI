import 'package:apiintegration/models/userdata_model.dart';
import 'package:apiintegration/services/userdata_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  Rx<UserData> userData =
      UserData(products: [], total: 0, skip: 0, limit: 0).obs;
  var isLoading = false.obs;

  getUsersData() async {
    final res = await UserdataService().getPost();
    if (res != null) {
      userData.value = res;
      isLoading.value = true;
      // print(
      //   'controler data fetched= ${userData.value.products[0].description}',
      // );
    }
  }
}
