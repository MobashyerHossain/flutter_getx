import 'package:flutter_getx_pattern/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
