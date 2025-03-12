import 'package:fetchlist/model/user_model.dart';
import 'package:fetchlist/service/api_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  Rx<UserModel> userlist =
      UserModel(limit: 0, skip: 0, total: 0, posts: []).obs;
  var isLoading = true.obs;

  Rx<UserModel> SearchItems =
      UserModel(limit: 0, skip: 0, total: 0, posts: []).obs;
  // Future<void> onInit() async {
  //   super.onInit();
  //   fetctUsers();
  // }
  filterSearchResult(String query) {
    SearchItems.value.posts =
        userlist.value.posts
            .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    print(SearchItems.value.posts);
  }

  fetctUsers() async {
    try {
      isLoading(true);
      var userData = await ApiService().fetchUserData();
      userlist.value = userData;
      SearchItems.value = userlist.value;
      // print(userData);
      isLoading(false);
    } catch (e) {
      print("error fetching user data ${e}");
    } finally {
      isLoading(false);
    }
  }
}
