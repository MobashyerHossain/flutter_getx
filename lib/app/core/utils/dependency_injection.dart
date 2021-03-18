// import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:flutter_getx_pattern/app/data/providers/auth_api.dart';
import 'package:flutter_getx_pattern/app/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

// Good for testing!!!!!!
// class MockAuthRepository implements AuthRepository {
//   @override
//   Future<RequestToken> newRequestToken() => throw Exception("fgdfg");
// }

class DependencyInjection {
  static void init() {
    Get.lazyPut<AuthApi>(
      () => AuthApi(),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepository(),
    );
    // Get.lazyPut<AuthRepository>(
    //   () => MockAuthRepository(),
    // );
  }
}
