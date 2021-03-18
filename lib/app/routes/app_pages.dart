import 'package:flutter_getx_pattern/app/modules/home/home_binding.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_page.dart';
import 'package:flutter_getx_pattern/app/modules/splash/spash_page.dart';
import 'package:flutter_getx_pattern/app/modules/splash/splash_binding.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
