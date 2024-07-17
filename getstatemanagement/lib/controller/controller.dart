import 'dart:developer';

import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;

  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;
  void increaseX(){
    _x++;
    log(_x.toString());
    update();
  }

  void decrease(){
    _x--;
    update();
  }


  void increaseY(){
    _y.value++;
    log(_y.toString());
    update();
  }

  void decreaseY(){
    _y.value--;
    update();
  }
}