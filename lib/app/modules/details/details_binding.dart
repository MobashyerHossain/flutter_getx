import 'package:flutter_getx_pattern/app/modules/details/details_controller.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(),
    );
  }
}
