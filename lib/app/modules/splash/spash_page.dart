import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SplashPage')),
      body: Container(
        child: GetX<SplashController>(
          init: SplashController(),
          builder: (_) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
