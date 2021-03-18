import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/splash/splash_controller.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SplashPage')),
      body: Container(
        child: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (_) => Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircularProgressIndicator(
                  //   color: Colors.grey,
                  // ),
                  Text(_.randInt.string),
                  IconButton(
                    onPressed: () => _.changeInt(),
                    icon: Icon(Icons.change_circle_rounded),
                  ),
                  IconButton(
                    onPressed: () => _.getHome(),
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.DETAILS),
                    icon: Icon(Icons.details),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
