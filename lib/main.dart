import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'modules/Onboarding/bindings/home_binding.dart';
// import 'modules/Onboarding/view/home_view.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onboarding,
      getPages: AppPages.pages,
    );
  }
}

