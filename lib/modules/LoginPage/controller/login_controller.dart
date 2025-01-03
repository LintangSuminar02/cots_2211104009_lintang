import 'package:get/get.dart';

class LoginController extends GetxController {
  // Reactive variable for phone number
  var phoneNumber = ''.obs;

  // Function to handle phone number input
  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  // Function to handle login logic
  void login() {
    if (phoneNumber.isEmpty) {
      Get.snackbar('Error', 'Phone number cannot be empty');
    } else {
      // Add your login logic here
      Get.snackbar('Success', 'Logged in with $phoneNumber');
    }
  }
}
