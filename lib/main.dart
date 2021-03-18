import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/core/themes/app_theme.dart';
import 'package:flutter_getx_pattern/app/modules/splash/spash_page.dart';
import 'package:flutter_getx_pattern/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: MyAppTheme().lightTheme,
      darkTheme: MyAppTheme().darkTheme,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: SplashPage(),
    );
  }
}
