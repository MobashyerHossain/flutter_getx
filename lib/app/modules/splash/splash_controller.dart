import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:flutter_getx_pattern/app/data/repositories/auth_repository.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  // constructor not needed if Dependency Injection and Get.find() is used
  // SplashController(this._authRepository);

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      RequestToken requestToken = await _authRepository.newRequestToken();
      Future.delayed(
        Duration(seconds: 1),
        () => Get.offNamed(
          AppRoutes.HOME,
          arguments: requestToken,
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
