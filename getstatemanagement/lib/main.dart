import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getstatemanagement/controller/list_controllers.dart';

import 'home/my_home_page.dart';
import 'helper/init_controller.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ListController listController = Get.find();
    return Obx(() => GetMaterialApp(
      title: 'Flutter Demo',
      theme: listController.theme, // Apply the theme from the controller

      home: MyHomePage(),
    ));
  }
}

