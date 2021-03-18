import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/core/themes/app_theme.dart';
import 'package:flutter_getx_pattern/app/core/utils/dependency_injection.dart';
import 'package:flutter_getx_pattern/app/modules/splash/spash_page.dart';
import 'package:flutter_getx_pattern/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme().lightTheme,
      darkTheme: MyAppTheme().darkTheme,
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.fade,
      initialRoute: '/',
      getPages: AppPages.pages,
      home: SplashPage(),
    );
  }
}
