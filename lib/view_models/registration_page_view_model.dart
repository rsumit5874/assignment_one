import 'package:assignment_one/model/user_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegistrationViewModel extends GetxController {
  final _userModel = UserModel().obs;

  UserModel getUserModel() {
    return _userModel.value;
  }

  void firstName(String value) {
    _userModel.value = _userModel.value.copyWith(firstName: value);
  }

  void lastname(String value) {
    _userModel.value = _userModel.value.copyWith(lastName: value);
  }

  void email(String email) {
    _userModel.value = _userModel.value.copyWith(email: email);
  }
}
