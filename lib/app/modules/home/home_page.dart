import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/core/themes/color_theme.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) => controller.onUserNameChange(text),
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (text) => controller.onPasswordChange(text),
                  keyboardAppearance: Brightness.dark,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () => controller.submit(),
                  child: Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
