import 'package:get/get.dart';
// import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final _numb = 'hrdhr'.obs;
  get numb => this._numb.value;
  set numb(value) => this._numb.value = value;
}
