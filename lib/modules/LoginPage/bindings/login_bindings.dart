import 'package:get/get.dart';
import '../controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // Dependency Injection
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
