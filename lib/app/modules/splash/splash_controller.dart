import 'dart:math';

import 'package:get/get.dart';

class SplashController extends GetxController {
  var randInt = '75'.obs;
  changeInt() {
    this.randInt = Random().nextInt(100).toString().obs;
    print(randInt);
    update();
  }
}
