import 'package:get/get.dart';

class WelcomeController extends GetxController {
  var currentSlide = 0.obs;

  void changeSlide(int index) {
    currentSlide.value = index;
  }
}
