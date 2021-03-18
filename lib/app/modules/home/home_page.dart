import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.numb,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () => Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark),
                splashColor: Colors.blueGrey,
                child: Text(
                  'Chnage Theme',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () => Get.offNamed(Routes.SPLASH),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
