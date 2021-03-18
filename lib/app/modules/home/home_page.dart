import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
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
                'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
