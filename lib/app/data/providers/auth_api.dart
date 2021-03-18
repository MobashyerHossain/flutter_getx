import 'package:flutter_getx_pattern/app/core/utils/constants.dart';
import 'package:flutter_getx_pattern/app/data/models/request_token.dart';
import 'package:get/get.dart';

const baseUrl = 'https://api.themoviedb.org/3/authentication/guest_session/new';

class AuthApi extends GetConnect {
  Future<RequestToken> newRequestToken() async {
    final Response response = await get(baseUrl, query: {
      "api_key": Constants.MOVIE_DB_API_KEY,
    });

    return RequestToken.fromJson(response.body);
  }
}
