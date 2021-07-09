import 'package:dw3_pizza_delivery_app/app/repositories/user_repository.dart';
import 'package:get/get.dart';
import './login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(UserRepository(Get.find()));
    Get.put(LoginController(Get.find()));
  }
}
