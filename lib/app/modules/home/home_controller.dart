import 'package:flutter_getx_pattern/app/data/models/request_body.dart';
import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:flutter_getx_pattern/app/data/repositories/auth_repository.dart';
import 'package:get/get.dart';
// import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();

  String _username = '';
  String _password = '';

  void onUserNameChange(String text) {
    _username = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  Future<void> submit() async {
    print('object');
    try {
      final String rt = await Get.arguments;
      final requestBody = RequestBody(
        username: _username,
        password: _password,
        requestToken: rt,
      );
      final RequestToken authRequestToken =
          await _authRepository.authWithLogin(requestBody);
      print('fdfd');
      print(authRequestToken.toJson());
    } catch (e) {
      print(e);
    }
  }
}
