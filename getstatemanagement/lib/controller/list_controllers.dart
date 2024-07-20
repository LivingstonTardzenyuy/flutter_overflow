import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListController extends GetxController{
  RxList _list = [].obs;
  RxList get list => _list;

  Rx<ThemeData> _theme = ThemeData.light().obs;
  ThemeData get theme => _theme.value;



  final String title = 'My Awesome View';

  void setValues(int x){
    _list.add(x);
    print(_list);
  }


  void changeTheme(){
    if (_theme.value == ThemeData.light()){
      _theme.value = ThemeData.dark();
    }
    else{
      _theme.value = ThemeData.light();
    }
  }
  @override
  void update([List<Object>? ids, bool condition = true]) {
    // TODO: implement update
    super.update(ids, condition);
  }
}