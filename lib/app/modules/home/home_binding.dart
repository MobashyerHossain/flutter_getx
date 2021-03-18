import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
