import 'package:get/get.dart';
import 'modules/onboarding_Page/bindings/bindings.dart';
import 'modules/onboarding_Page/view/view.dart';

class Routes {
  static const onboarding = '/onboarding';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.onboarding,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
  ];
}

