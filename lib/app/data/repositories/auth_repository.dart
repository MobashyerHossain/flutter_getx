import 'package:flutter_getx_pattern/app/data/models/request_body.dart';
import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:flutter_getx_pattern/app/data/providers/auth_api.dart';
import 'package:get/get.dart';

class AuthRepository {
  final AuthApi _authApi = Get.find<AuthApi>();

  // constructor not needed if Dependency Injection and Get.find() is used
  // AuthRepository(this._authApi);

  Future<RequestToken> newRequestToken() async {
    final _api = _authApi.newRequestToken();
    return _api;
  }

  Future<RequestToken> authWithLogin(RequestBody requestBody) async {
    final _api = _authApi.validateWithLogin(
      data: requestBody,
    );
    return _api;
  }

  // getAll() {
  //   return apiClient.getAll();
  // }

  // getId(id) {
  //   return apiClient.getId(id);
  // }

  // delete(id) {
  //   return apiClient.delete(id);
  // }

  // edit(obj) {
  //   return apiClient.edit(obj);
  // }

  // add(obj) {
  //   return apiClient.add(obj);
  // }
}
