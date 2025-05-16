import 'package:apiintegration/models/post.dart';
import 'package:apiintegration/services/remote_service.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  var posts = <Post>[].obs;
  var isLoaded = false.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    var res = await RemoteService().getPost();
    if (res != null) {
      posts.value = res;
      isLoaded.value = true;
    }
  }
}
