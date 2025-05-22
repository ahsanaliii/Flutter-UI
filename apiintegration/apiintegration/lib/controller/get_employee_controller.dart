import 'package:apiintegration/models/employee_model.dart';
import 'package:apiintegration/services/employee_services.dart';
import 'package:get/get.dart';

class GetEmployeeController extends GetxController {
  RxList<Datum> employeList = <Datum>[].obs;
  RxBool isLoading = false.obs;

  getEmployeData() async {
    final response = await EmployeeServices().getData();
    employeList.value = response;
    print(employeList[0].email);
  }
}
