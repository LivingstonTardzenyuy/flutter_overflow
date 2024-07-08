import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:metrominds/screens/button_nav.dart';
import 'package:metrominds/screens/home.dart';

import 'controller/buttonNav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Outsourcing Platform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: MyBindings(),
      home: MainActivityPage(),
    );
  }
}





class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottonController());
  }
}