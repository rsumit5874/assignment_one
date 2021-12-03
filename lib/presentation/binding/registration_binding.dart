import 'package:get/get.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationBinding>(
      () => RegistrationBinding(),
    );
  }
}
