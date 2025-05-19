import 'package:get/get.dart';
import 'package:postdata/get_advice_service.dart';

class GetAdviceController extends GetxController {
  RxString advice = "".obs;
  Rx<bool> isLoading = false.obs;

  getData() async {
    final res = await GetAdviceService().getAdvice();
    if (res != null) {
      advice.value = res.slip.advice;
      isLoading.value = true;
    }
  }
}
