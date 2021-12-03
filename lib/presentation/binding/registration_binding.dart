import 'package:assignment_one/view_models/regisration_page_controller.dart';
import 'package:assignment_one/view_models/info_page_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationPageController>(
      () => RegistrationPageController(),
    );
    Get.lazyPut<YourInfoPageController>(
      () => YourInfoPageController(),
    );
  }
}
