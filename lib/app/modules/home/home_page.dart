import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/core/themes/color_theme.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          IconButton(
            onPressed: () => Get.isDarkMode
                ? Get.changeThemeMode(ThemeMode.light)
                : Get.changeThemeMode(ThemeMode.dark),
            icon: Icon(
              Icons.change_circle_outlined,
              color: Get.isDarkMode
                  ? MyColorTheme().lightBodyText
                  : MyColorTheme().darkBodyText,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () => {},
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
