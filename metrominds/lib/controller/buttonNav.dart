import 'package:get/get.dart';

class BottonController extends GetxController {
  RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;

  set currentIndex(int index) {
    _currentIndex.value = index;
    update();
  }
}