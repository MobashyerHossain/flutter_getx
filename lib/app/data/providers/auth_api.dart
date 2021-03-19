import 'package:dio/dio.dart';
import 'package:flutter_getx_pattern/app/core/utils/constants.dart';
import 'package:flutter_getx_pattern/app/data/models/request_body.dart';
import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:get/instance_manager.dart';

class AuthApi {
  final Dio _dio = Get.find<Dio>();

  Future<RequestToken> newRequestToken() async {
    final Response response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {'api_key': Constants.MOVIE_DB_API_KEY},
    );

    return RequestToken.fromJson(response.data);
  }

  Future<RequestToken> validateWithLogin({required RequestBody data}) async {
    final Response response = await _dio.post(
      '/authentication/token/validate_with_login',
      queryParameters: {'api_key': Constants.MOVIE_DB_API_KEY},
      data: data,
    );

    return RequestToken.fromJson(response.data);
  }
}
