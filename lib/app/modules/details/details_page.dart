import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DetailsPage')),
      body: Container(
        child: GetBuilder<DetailsController>(
          init: DetailsController(),
          builder: (_) => Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.grey,
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
